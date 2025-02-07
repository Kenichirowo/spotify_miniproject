# Spotify Songs Analysis
This repository contains a comprehensive analysis of Spotify songs from different time periods, focusing on testing two main hypotheses:
1. **Danceability and Energy Positively Impact Popularity**
   - Hypothesis: Tracks with higher danceability and energy scores are more likely to have a higher popularity rating.
2. **Explicit Content is More Popular in Recent Years**
   - Hypothesis: Explicit tracks have become more popular over time, particularly in the last decade.
## Project Structure
The repository contains the following main files:
- `songs_normalize.csv` and `top_50_2023.csv`: Datasets used for the analysis.
- `analysis.py`: Python script containing data cleaning, preprocessing, and hypothesis testing code.
- `visualizations/`: Directory containing saved plots and charts generated during the analysis.
- `README.md`: Documentation for the project.
## Analysis Steps
### 1. Data Preprocessing
- The datasets are merged and cleaned using the `empty_cleaner()` function to remove null values.
- Non-relevant columns are dropped, and the genres are simplified into broader categories.
- Popularity filtering is applied to focus on songs with popularity scores ≥ 50.
### 2. Hypothesis Testing
#### Hypothesis 1: Danceability and Energy Impact on Popularity
- **Method**: Scatter plots with trend lines were created to visualize relationships between danceability, energy, and popularity.
- **Findings**:
  - Danceability has no significant correlation with popularity.
  - Energy shows a slight negative correlation with popularity.
#### Hypothesis 2: Explicit Content Popularity Over Time
- **Method**: Line charts comparing the percentage of explicit songs and their average popularity over time.
- **Findings**:
  - The percentage of explicit songs has increased in recent years.
  - Popularity of explicit songs has also risen, supporting the hypothesis.
### 3. Visualizations
- Scatter plots for danceability and energy vs. popularity.
- Combined line charts for explicit song trends and popularity.
- All visualizations use Matplotlib and are saved in the `visualizations/` directory.
## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo/spotify-analysis.git
   ```
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. Run the analysis script:
   ```bash
   python analysis.py
   ```
## Requirements
- Python 3.7+
- Required Python libraries:
  - pandas
  - numpy
  - matplotlib
## Insights
This project provides valuable insights into the factors influencing song popularity on Spotify and explores trends in explicit content over time. These findings can help artists, producers, and marketers better understand audience preferences and trends.
## Next Steps
- Perform statistical tests (e.g., correlation coefficients) to validate findings.
- Extend the analysis to include other features such as `valence` and `tempo`.
- Develop a predictive model for song popularity based on audio features.
## Contributing
Contributions are welcome! Feel free to open an issue or submit a pull request.
