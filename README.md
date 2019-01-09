# Water Consumption
Water Consumption in a Median Size City Study, 
*Part of Udacity Data Scientist Nano Degree (Term 2).*

In this project I have applied the Cross-industry standard process for data mining (CRISP-DM) methodology on the mentioned dataset to find the answers of some questions.

The method envolves: Business Understanding, Data Understanding, Data Preparation, Modeling, and Evaluation.

I have selected this dataset because it is about water consumption, and my major is water and agricultureal engineering, so I have good backgroung of water related studies, especiall about water conservation. 
**The First Stage:** I have explored the data, downloaded the English description of the features (the original dataset in in Spanish), and explored the data set properties through pandas and Jupyter notebook.

I found too many missing values in the dataset, I have specified a criteria to drop or impute the missing values. I have made a small comparative study on imputing timeseries through the ***ImputingTimeSeriesData*** notebook [here](https://github.com/drnesr/WaterConsumption/blob/master/ImputingTimeSeriesData.ipynb) and published the description in [this](https://medium.com/@drnesr/filling-gaps-of-a-time-series-using-python-d4bfddd8c460) Medium post.

Next, I have applied the best imputing methodology to impute my data as shown in the ***WaterConsumtionSonora_Stage1*** notebook.

**The second stage:** Due to the limitation of file upload sizin in GitHub, I attempted to reformat the datafile to be less than 100 MB, I have divided the data table to one main and three child tables that will be joined through primary-foriegn keys.
- The main table, I removed all text from it and placed foriegn keys instead
- The other three tables I have hot-encoded them, each with its suitable encoding
   - The `Usage` table was encoded based on the properties of its values.
   - The `User` table was encoded based on the properties of its values.
   - The `Gauge` table was encoded based on teh one-hot-encoding method.
This stage is saved at the ***WaterConsumtionSonora_Stage2*** notbook.

**The third stage:** I have applied some ML algorithm to see the possibility of predicting either the reference consumption, or the average monthly consumption, or both.

The following models were applied: {With and without normalizing the data}
- linear_model.LinearRegression() 
- linear_model.SGDRegressor()
- linear_model.PassiveAggressiveRegressor()

The models were applied on two shapes of the data:

- The full dataset with all usage features, user's features, and gauge features
- The dataset with all features except the gauge features.

The results showed that all the models have low srore (<25% determination coefficient, $r^{2}$), except the LinearRegression on unnormalized data with all features, that was able to predict the monthly consumption with 71.6% $r^{2}$ for the testing dataset, and 75.8% $r^{2}$ for the training dataset, while the Reference cosumption were not predictable with more than 5.8%.

This stage is saved at the ***WaterConsumtionSonora_Stage3*** notbook.

**the fourth stage:** In This stage I have analyzed all the features (exept the gauge features) to find the effect of their existence/absence on the consumption of water in the city of Sonora.

The results showed that there are some effects of the month of the year on the monthly consumption. The resuls also show that there are some obvious effects of some features like lindustry, and agriculture. The detailed results are at the end of the ***WaterConsumtionSonora_Stage4*** notebook.

#### References
**The source of the dataset:**
https://www.kaggle.com/marcomolina/water-consumption-in-a-median-size-city/discussion/23722


