all: summary.pdf

requirements: requirements.txt
	pip install -r $<

clean:
	rm -f Flexible\ Pattern\ Matching.pdf

summary.pdf: Flexible\ Pattern\ Matching.ipynb requirements
	cp -R img img.full
	mogrify -scale 500x img/*.png
	ipython3 nbconvert --to pdf "$<" --output=$(basename $@)
	rm -rf img
	mv img.full img
