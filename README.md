{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red22\green21\blue22;\red255\green255\blue255;\red18\green79\blue146;
}
{\*\expandedcolortbl;;\cssrgb\c11373\c10980\c11373;\cssrgb\c100000\c100000\c100000;\cssrgb\c7059\c39216\c63922;
}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs30 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 # Spotify Songs Analysis\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 This repository contains a comprehensive analysis of Spotify songs from different time periods, focusing on testing two main hypotheses:\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 1. **Danceability and Energy Positively Impact Popularity**\
\'a0\'a0\'a0- Hypothesis: Tracks with higher danceability and energy scores are more likely to have a higher popularity rating.\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 2. **Explicit Content is More Popular in Recent Years**\
\'a0\'a0\'a0- Hypothesis: Explicit tracks have become more popular over time, particularly in the last decade.\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 ## Project Structure\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 The repository contains the following main files:\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 - `songs_normalize.csv` and `top_50_2023.csv`: Datasets used for the analysis.\
- `analysis.py`: Python script containing data cleaning, preprocessing, and hypothesis testing code.\
- `visualizations/`: Directory containing saved plots and charts generated during the analysis.\
- `README.md`: Documentation for the project.\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 ## Analysis Steps\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 ### 1. Data Preprocessing\
- The datasets are merged and cleaned using the `empty_cleaner()` function to remove null values.\
- Non-relevant columns are dropped, and the genres are simplified into broader categories.\
- Popularity filtering is applied to focus on songs with popularity scores \uc0\u8805  50.\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 ### 2. Hypothesis Testing\
#### Hypothesis 1: Danceability and Energy Impact on Popularity\
- **Method**: Scatter plots with trend lines were created to visualize relationships between danceability, energy, and popularity.\
- **Findings**:\
\'a0\'a0- Danceability has no significant correlation with popularity.\
\'a0\'a0- Energy shows a slight negative correlation with popularity.\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 #### Hypothesis 2: Explicit Content Popularity Over Time\
- **Method**: Line charts comparing the percentage of explicit songs and their average popularity over time.\
- **Findings**:\
\'a0\'a0- The percentage of explicit songs has increased in recent years.\
\'a0\'a0- Popularity of explicit songs has also risen, supporting the hypothesis.\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 ### 3. Visualizations\
- Scatter plots for danceability and energy vs. popularity.\
- Combined line charts for explicit song trends and popularity.\
- All visualizations use Matplotlib and are saved in the `visualizations/` directory.\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 ## How to Run\
1. Clone the repository:\
\'a0\'a0\'a0```bash\
\'a0\'a0\'a0git clone\'a0{\field{\*\fldinst{HYPERLINK "https://github.com/your-repo/spotify-analysis.git"}}{\fldrslt \cf4 \strokec4 https://github.com/your-repo/spotify-analysis.git}}\
\'a0\'a0\'a0```\
2. Install dependencies:\
\'a0\'a0\'a0```bash\
\'a0\'a0\'a0pip install -r requirements.txt\
\'a0\'a0\'a0```\
3. Run the analysis script:\
\'a0\'a0\'a0```bash\
\'a0\'a0\'a0python analysis.py\
\'a0\'a0\'a0```\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 ## Requirements\
- Python 3.7+\
- Required Python libraries:\
\'a0\'a0- pandas\
\'a0\'a0- numpy\
\'a0\'a0- matplotlib\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 ## Insights\
This project provides valuable insights into the factors influencing song popularity on Spotify and explores trends in explicit content over time. These findings can help artists, producers, and marketers better understand audience preferences and trends.\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 ## Next Steps\
- Perform statistical tests (e.g., correlation coefficients) to validate findings.\
- Extend the analysis to include other features such as `valence` and `tempo`.\
- Develop a predictive model for song popularity based on audio features.\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 ## Contributing\
Contributions are welcome! Feel free to open an issue or submit a pull request.}