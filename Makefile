all: summary.pdf

clean:
	rm -f Flexible\ Pattern\ Matching.pdf

summary.pdf: Flexible\ Pattern\ Matching.ipynb
	ipython3 nbconvert --to pdf "$<" --output=$(basename $@)
