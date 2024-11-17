# SOCIAL HEALTH AUTHORITY (SHA) CHATBOT

## Overview

The Social Health Authority (SHA) chatbot project aims to enhance public access to healthcare information in Kenya by automating the response to frequently asked questions regarding health insurance services. This project focuses on reducing barriers to information, ensuring equitable access to health resources, and improving user satisfaction. The chatbot utilizes data-driven natural language understanding (NLU) methods to provide accurate, instant responses to queries, thereby supporting SHA’s mission of making healthcare more accessible.

## Introduction

The SHA chatbot is designed to provide an effective solution to healthcare-related information bottlenecks faced by millions of Kenyans. By leveraging natural language processing capabilities, this chatbot allows users to access accurate, instant information about health insurance and services. Its goal is to reduce the workload for customer service teams, improve operational efficiency, and provide seamless access to healthcare information at any time.

## Installation

To run this project locally, follow these steps:

1. **Clone the Repository**:

   ```bash
   git clone 
   ```

2. **Install Dependencies**:
   Make sure to have Python 3.8 or above installed. Then, navigate to the project folder and install the required dependencies:

   ```bash
   cd sha_chatbot
   pip install -r requirements.txt
   ```

3. **Install Rasa**:
   Install Rasa framework:

   ```bash
   pip install rasa
   ```

## Usage

1. **Train the Model**:
   Train the chatbot by running:

   ```bash
   rasa train
   ```

2. **Run the Chatbot**:
   To interact with the chatbot, start the Rasa server:

   ```bash
   rasa run --enable-api --cors "*"
   ```

3. **Use Ngrok for Public Exposure**:
   Run Ngrok to make the server accessible over the internet:

   ```bash
   ngrok http 5005
   ```

4. **HTML Interface**:
   Open the provided HTML file (`index.html`) in a web browser to start interacting with the chatbot.

## Project Structure

- **`data/`**: Contains training data including `nlu.yml`, `stories.yml`.
- **`models/`**: Stores the trained models.
- **`domain.yml`**: Defines intents, entities, actions, and responses.
- **`config.yml`**: Configuration file for Rasa's pipeline and policies.
- **`index.html`**: Simple user interface for interacting with the chatbot.

## Business Understanding

The Social Health Authority (SHA) is responsible for providing millions of Kenyans with essential health insurance information and services. The sheer volume of customer inquiries on topics such as eligibility, registration, contributions, benefits, and claims has often overwhelmed customer service teams. The SHA chatbot is an innovative approach to alleviate this information bottleneck by addressing repetitive queries automatically and accurately, providing users with quick, on-demand access to important healthcare information.

### Problem Statement

SHA's customer support system experiences an influx of repetitive questions, leading to increased wait times and strained operational efficiency. The lack of immediate responses limits user access to vital health information, hindering the organization’s goal of equitable healthcare coverage. This project seeks to solve these challenges by implementing a chatbot that provides immediate, standardized, and accurate answers, thus significantly enhancing user experience.

### Stakeholders

The main stakeholders are:

- **SHA Members**: Individuals seeking health information and insurance support.
- **SHA Customer Service Teams**: Staff who benefit from decreased repetitive inquiries.
- **Healthcare Providers**: Medical practitioners who can obtain accurate health policy information for their patients through the chatbot.

### Project Value

- **Reduced Wait Times**: Users can receive responses instantly.
- **Operational Efficiency**: Customer service agents can focus on complex queries.
- **Improved Accessibility**: Users have 24/7 access to crucial health information.

## Data Source

The data used for training the chatbot consists of a curated set of FAQs sourced from a PDF document available on the SHA website. These questions represent the most commonly asked inquiries and have been pre-processed to create a structured dataset for training purposes. The final dataset comprises 93 questions and their respective answers, grouped into various categories based on the topic to facilitate the chatbot's intent recognition.

## Data Processing and Preparation

The dataset was first converted from PDF to CSV format and cleaned to prepare it for natural language processing tasks. This included:

1. **Categorization**: Assigning questions into nine categories (e.g., "Registration and Contributions," "Benefits and Tariffs") to support intent-based modeling.
2. **Text Cleaning**: Converting all text to lowercase, removing punctuation, and retaining essential numerical details (such as years) to standardize questions.
3. **Deduplication**: Eliminating duplicate questions to avoid skewing the model during training.

## Model Training and Configuration

The chatbot was developed using Rasa, an open-source conversational AI framework. Key components and files created include:

- **NLU Training Data (********`nlu.yml`********)**: Contains sample user queries grouped by intents, helping the chatbot understand various ways in which users may frame similar questions.
- **Domain File (********`domain.yml`********)**: Defines the intents, entities, actions, and responses used by the chatbot. It outlines the possible responses for each user query and determines the structure of conversations.
- **Stories (********`stories.yml`********)**: Defines conversational flows that model multi-turn dialogues between users and the chatbot.

### Key Rasa Components and Improvements

The project uses Rasa's core and NLU models. The **pipeline** includes several components to enhance performance:

1. **WhitespaceTokenizer** for splitting sentences into words.
2. **CountVectorsFeaturizer** for transforming text into vectors.
3. **DIETClassifier** for intent classification and entity extraction.
4. **TEDPolicy** for predicting the next action based on conversation history.

Model improvement strategies focused on:

- Expanding training data to cover diverse examples.
- Refining intents to minimize overlap and improve response accuracy.
- Adding more complex stories to account for varied conversational paths.

The final model achieved an accuracy of **81.19%** in intent classification, up from **73%** in earlier iterations.

## Evaluation and Visualization

### NLU Evaluation

The model was evaluated for intent recognition and entity extraction. Precision, recall, and F1-scores were calculated for each intent, highlighting areas that needed further refinement. The overall accuracy was reported as **81.19%**.

### Visualization of Evaluation Metrics

A histogram was plotted for **F1 scores**, **precision**, and **recall** for each intent, giving a visual summary of the model's performance. This facilitated the identification of underperforming intents that required additional training data or adjustment.

## Deployment

The chatbot was deployed for user testing using **Ngrok** to expose the local Rasa server to the internet, enabling real-time interaction via a web browser. A simple **HTML-based interface** was created to provide users with an intuitive and accessible way to chat with the bot.

Deployment Summary:

- **Rasa Server**: Deployed locally and exposed using Ngrok.
- **HTML Interface**: Implemented to allow user-friendly interaction, connecting directly to the Rasa server's REST API endpoint.

## Contributing

Contributions are welcome! To contribute:

1. **Fork the repository**.
2. **Create a new branch** for any feature or bug fix.
3. **Submit a pull request** with a clear description of the changes.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

## Conclusion

The SHA chatbot has successfully demonstrated its value in enhancing information accessibility for Kenyans seeking health insurance guidance. By automating responses to common inquiries, it reduces the workload for customer service teams, improves response times, and provides continuous support to users.

The next steps for this project include expanding the FAQ database, incorporating multilingual support, and integrating the chatbot across multiple communication channels to further improve healthcare access for all Kenyans.

