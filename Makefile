all: eaw_research_data_publishing_guide.html eaw_research_data_publishing_guide_pdf.pdf
.PHONY: all

eaw_research_data_publishing_guide.html:  eaw_research_data_publishing_guide.md
	pandoc --template=GitHub.html5 eaw_research_data_publishing_guide.md -o eaw_research_data_publishing_guide.html

eaw_research_data_publishing_guide_pdf.pdf: eaw_research_data_publishing_guide_pdf.md
	pandoc eaw_research_data_publishing_guide_pdf.md -t latex -o eaw_research_data_publishing_guide_pdf.pdf
