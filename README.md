# Example Data Sets
This repo is a collection of four example datasets for the "personal comparison" version of the ConSpeciFix pipeline. The input files are located in the folder `#_name_pre` and the resulting file structure can be found and downloaded from `#_name_post.zip`.

## Usage
To run the ConSpeciFix pipeline for a folder of input genomes, follow the instructions in the ConSpeciFix [readme](https://github.com/Bobay-Ochman/ConSpeciFix/blob/master/README.md) for "Personal Comparison". The command to launch the process is:

```
python runner_personal.py /absolute/path/to/1_example_pre/
```

## Output Files

All examples of output are available here:

- [1\_dengue\_post.zip](https://s3.amazonaws.com/conspecifix-example/1_dengue_post.zip) (17M)
- [2\_enterovirusMix\_post.zip](https://s3.amazonaws.com/conspecifix-example/2_enterovirusMix_post.zip) (7.5M)
- [3\_bacteria\_post.zip](https://s3.amazonaws.com/conspecifix-example/3_bacteria_post.zip) (502M)
- [4\_zika\_post.zip](https://s3.amazonaws.com/conspecifix-example/4_zika_post.zip) (148M)

## Examples

A note on time: The ConSpeciFix process does a large number of analyses, not all of which are crucial to the final verdict of deciding which strains are members of the species. The strain maps in particular takes a *lot* of time and memory (n^2 on size of input), and can be optionally turned off in the config.py file by setting `GENERATE_GENE_MAPS = False`. With this flag set, examples one and two should complete within 10 minutes on most modern machines.

- **Dengue:** This first example (located in `1_dengue_pre` and `1_dengue_post`) is a collection of samples from the Dengue virus. This example should run quickly and report all strains being members of the species.
- **Enterovirus:** An example of two divergent species in one sample. Only the Enterovirus G are labeled as being members of the species, as well as one strain mislabeled as F.
- **Bacteria:** An example on a longer genome. Will take proportionally longer to run.
- **Zika:** An example with more than 100 strains, and demonstrates how extra strains are removed if too many are present.
