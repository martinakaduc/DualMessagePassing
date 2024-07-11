import os
import sys
import pickle
import pandas as pd


result_file = sys.argv[1]
subgraph_size_file = os.path.join(sys.argv[2], "subgraphs_size.pkl")
subgraph_degree_file = os.path.join(sys.argv[2], "subgraphs_degree.pkl")

df = pd.read_json(result_file)
df = df.to_dict()

results = {
    "Execution Time": df["time"]["total"]/len(df["time"]["avg"]),
    "ROC AUC": df["error"]["AUC"],
    "PR AUC": df["error"]["PR"],
    "Precision": df["error"]["PREC"],
    "Recall": df["error"]["RECALL"],
    "F1-Score": df["error"]["F1"],
    "Accuracy": df["error"]["ACC"],
}

print(results)


def get_avg_runtime(sg_list, all_sg_list, all_runtime):
    runtime = 0
    # Optimize above code
    if len(sg_list) == 0:
        return 0
    for sg in sg_list:
        runtime += all_runtime[all_sg_list.index(sg)]
    return runtime/len(sg_list)


subgraph_size_dict = pickle.load(open(subgraph_size_file, "rb"))
subgraph_degree_dict = pickle.load(open(subgraph_degree_file, "rb"))

# Non-dense (degree <= 3)
nondense_subgraphs = [subgraph for subgraph in subgraph_size_dict.keys(
) if subgraph_degree_dict[subgraph] <= 3]
# size <= 20
nondense_ss20 = [
    subgraph for subgraph in nondense_subgraphs if subgraph_size_dict[subgraph] <= 20]
# 20 < size <= 40
nondense_ss40 = [subgraph for subgraph in nondense_subgraphs if subgraph_size_dict[subgraph]
                 > 20 and subgraph_size_dict[subgraph] <= 40]
# 40 < size <= 60
nondense_ss60 = [subgraph for subgraph in nondense_subgraphs if subgraph_size_dict[subgraph]
                 > 40 and subgraph_size_dict[subgraph] <= 60]
# size > 60
nondense_ss60p = [
    subgraph for subgraph in nondense_subgraphs if subgraph_size_dict[subgraph] > 60]

print("Non-dense subgraphs")
print("Size <= 20", get_avg_runtime(
    nondense_ss20, df["data"]["id"], df["time"]["avg"]))
print("20 < Size <= 40", get_avg_runtime(
    nondense_ss40, df["data"]["id"], df["time"]["avg"]))
print("40 < Size <= 60", get_avg_runtime(
    nondense_ss60, df["data"]["id"], df["time"]["avg"]))
print("Size > 60", get_avg_runtime(
    nondense_ss60p, df["data"]["id"], df["time"]["avg"]))

# Dense (degree > 3)
dense_subgraphs = [subgraph for subgraph in subgraph_size_dict.keys(
) if subgraph_degree_dict[subgraph] > 3]
# size <= 20
dense_ss20 = [
    subgraph for subgraph in dense_subgraphs if subgraph_size_dict[subgraph] <= 20]
# 20 < size <= 40
dense_ss40 = [subgraph for subgraph in dense_subgraphs if subgraph_size_dict[subgraph]
              > 20 and subgraph_size_dict[subgraph] <= 40]
# 40 < size <= 60
dense_ss60 = [subgraph for subgraph in dense_subgraphs if subgraph_size_dict[subgraph]
              > 40 and subgraph_size_dict[subgraph] <= 60]
# size > 60
dense_ss60p = [
    subgraph for subgraph in dense_subgraphs if subgraph_size_dict[subgraph] > 60]

print("Dense subgraphs")
print("Size <= 20", get_avg_runtime(
    dense_ss20, df["data"]["id"], df["time"]["avg"]))
print("20 < Size <= 40", get_avg_runtime(
    dense_ss40, df["data"]["id"], df["time"]["avg"]))
print("40 < Size <= 60", get_avg_runtime(
    dense_ss60, df["data"]["id"], df["time"]["avg"]))
print("Size > 60", get_avg_runtime(
    dense_ss60p, df["data"]["id"], df["time"]["avg"]))
