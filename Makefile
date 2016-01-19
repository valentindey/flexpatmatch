all: summary.pdf

requirements: requirements.txt
	pip install -r $<

clean:
	rm -f Flexible\ Pattern\ Matching.pdf

summary.pdf: Flexible\ Pattern\ Matching.ipynb requirements
	ipython3 nbconvert --to pdf "$<" --output=$(basename $@)
