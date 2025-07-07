# 📉 Customer Churn Prediction System

### Real-Time Churn Analytics Using ANN, Azure, Tableau, and Streamlit

---

## 🧠 Overview

This project presents a full-fledged pipeline to **predict telecom customer churn** using **Artificial Neural Networks (ANN)** and visualizes the insights through an **interactive dashboard** in **Tableau**, deployed on **Azure Cloud**, and a **web app** built with **Streamlit**.

By integrating ETL processes, machine learning, real-time analytics, and cloud infrastructure, this system enables proactive decision-making to enhance customer retention and business growth.

---

## 🚀 Features

- 🔍 Accurate churn prediction using an optimized ANN model.
- ☁️ End-to-end cloud deployment on Azure with streaming data pipelines.
- 📊 Real-time Tableau dashboards powered by live SQL connections.
- 🌐 Streamlit-based user-friendly web app for on-the-fly predictions.
- 🔄 Auto-retraining and continuous model evaluation.
- 🧩 Modular and reusable codebase adaptable to customer/employee churn.

---

## 🛠️ Architecture

Data Sources → ETL (MS SQL + Python) → Feature Engineering → ANN Model → Azure ML
↘ Live SQL (Azure) ↘ ↘ Tableau Dashboards
↘ Streamlit Web App ↘
----
🌐 Dashboard
https://public.tableau.com/views/TelecomChurnprediction/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
---

## 📦 Project Modules

### 🔧 Module 1: ETL Pipeline

- **Data Extraction**: Using Python and APIs to extract structured JSON data.
- **Transformation**: Performed in MS SQL Server – cleaning, normalization, KPI calculation.
- **Loading**: Data pushed to Azure SQL and accessed by Tableau for visualization.

### 🧹 Module 2: Data Preprocessing

- **Feature Engineering**: Encoding, scaling (MinMax), handling nulls.
- **Exploration**: Histogram, tenure vs churn plots, churn distribution.
- **Encoding**: One-hot, label encoding, and binary transformations.

### 🤖 Module 3: ANN Modeling

- **Model**: Multi-layer Perceptron using Keras with ReLU & Sigmoid activations.
- **Training**: Binary classification with `binary_crossentropy` loss.
- **Evaluation**: Accuracy, Recall, F1-score, and Crossentropy metrics calculated.
- **Optimization**: Dropout, L1/L2 regularization, and Adam optimizer used.
- **Deployment**: Model saved and deployed via Azure ML service.

### 📊 Module 4: Tableau Dashboard

Interactive dashboard built with:
- **KPI Page**: Churn rate, ARPU, CLTV.
- **Customer Page**: Demographics and segmentation.
- **Service Page**: Usage analytics, outage impacts.
- **Prediction Page**: ML outputs, probability histograms.
- **Account Page**: Billing trends, support interaction heatmaps.

### ☁️ Module 5: Azure Integration

- **Event Hub**: Streams live data.
- **Stream Analytics**: SQL-like queries for real-time processing.
- **Synapse**: Stores processed data.
- **Blob Storage**: Archives historical data.
- **Azure ML**: Hosts and manages ANN model for real-time inference.
- **Power BI**: (Optional) for enhanced business reporting.

### 🌐 Module 6: Streamlit Web App

- **Input fields** for dynamic user data entry.
- **Model Integration** using joblib/pickle.
- **Real-time Predictions** displayed on screen.
- **User-Friendly Interface** for business users.

---

## 🧠 Technologies Used

| Tool          | Purpose                                 |
|---------------|------------------------------------------|
| Python        | Data preprocessing & model building      |
| TensorFlow/Keras | ANN model training                    |
| MS SQL Server | Data transformation and KPI calculation  |
| Azure         | Cloud deployment, streaming, ML hosting  |
| Tableau       | Dashboard visualization                  |
| Streamlit     | Front-end web interface                  |
| Power BI      | (Optional) Reporting                     |

---

## 📈 Performance Metrics

- **Accuracy**: ~88%
- **Precision**: 0.87
- **Recall**: 0.85
- **F1 Score**: 0.86
- **Binary Crossentropy**: ~0.33

---

## 📚 Literature Survey Highlights

- Compared ML models: Logistic Regression, Random Forest, SVM.
- ANN outperforms traditional models in capturing complex, nonlinear churn patterns.
- CNN & LSTM explored in other domains, but ANN selected for better real-time feasibility.

---

## 📌 Future Enhancements

- Add **NLP sentiment analysis** to model customer feedback.
- Extend to **employee churn** and **segment-based churn**.
- Incorporate **automated model retraining pipeline**.
- Introduce **predictive marketing** recommendations.

---

## 👨‍💻 Author

**Radhin Krishna R**  
B.Sc Data Science - V Semester  
Reg No: 22376003  


