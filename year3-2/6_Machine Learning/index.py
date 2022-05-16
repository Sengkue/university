{
 "cells": [
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## Binary Classification: Confusion Matrix"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "---\n",
    "* author:  [Prasert Kanawattanachai](prasert.k@chula.ac.th)\n",
    "* YouTube: https://www.youtube.com/prasertcbs\n",
    "* github: https://github.com/prasertcbs/scikitlearn_tutorial\n",
    "* [Chulalongkorn Business School](https://www.cbs.chula.ac.th/en/)\n",
    "---"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "import pandas as pd\n",
    "import numpy as np\n",
    "import seaborn as sns\n",
    "import matplotlib.pyplot as plt\n",
    "%matplotlib inline\n",
    "%config InlineBackend.figure_format='retina'"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "print(f'pandas  version = {pd.__version__}')\n",
    "print(f'numpy   version = {np.__version__}')\n",
    "print(f'seaborn version = {sns.__version__}')"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {
    "collapsed": "false"
   },
   "source": [
    "### data source\n",
    "https://en.wikipedia.org/wiki/Logistic_regression#Probability_of_passing_an_exam_versus_hours_of_study"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {
    "scrolled": true
   },
   "outputs": [],
   "source": [
    "df=pd.read_csv('https://github.com/prasertcbs/basic-dataset/raw/master/study_hours.csv')\n",
    "df.T"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "sns.lmplot(x='Hours', y='Pass', data=df,\n",
    "           logistic=True, height=4, aspect=1.5, \n",
    "           line_kws={'color': 'orange'})\n",
    "plt.ylabel('Probability of passing exam');\n",
    "plt.axvline(2.71, color='green', linestyle='--')\n",
    "plt.axhline(.5, color='red', linestyle='--');"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "# Scikit-learn: LogisticRegression\n",
    "doc: https://scikit-learn.org/stable/modules/generated/sklearn.linear_model.LogisticRegression.html"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "import sklearn\n",
    "from sklearn.model_selection import train_test_split\n",
    "from sklearn.linear_model import LogisticRegression"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "print(f\"sklearn version = {sklearn.__version__}\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "X_train = df[['Hours']]\n",
    "y_train = df.Pass"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {
    "scrolled": true
   },
   "outputs": [],
   "source": [
    "X_train # pandas DataFrame"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "y_train # pandas Series"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {
    "scrolled": true
   },
   "outputs": [],
   "source": [
    "model = LogisticRegression()\n",
    "# model = LogisticRegression(C=1e10) # minimize regularization\n",
    "model"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "model.fit(X_train, y_train)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {
    "scrolled": true
   },
   "outputs": [],
   "source": [
    "model.score(X_train, y_train) # accuracy of the model"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "predicted = model.predict(X_train)\n",
    "predicted"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "y_train.values"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {
    "collapsed": "false"
   },
   "source": [
    "## Confusion matrix"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "from sklearn import metrics\n",
    "from sklearn.metrics import confusion_matrix, plot_confusion_matrix, classification_report, accuracy_score, precision_score, recall_score, precision_recall_fscore_support, f1_score"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {
    "collapsed": "false"
   },
   "source": [
    "### further reading:\n",
    "* https://scikit-learn.org/stable/modules/model_evaluation.html#classification-metrics\n",
    "* https://en.wikipedia.org/wiki/Confusion_matrix"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "X_train['Hours'].values"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "y_train.values"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "predicted"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "cm=confusion_matrix(y_train, predicted)\n",
    "cm"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "plot_confusion_matrix(model, X_train, y_train, cmap='Oranges')"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {
    "collapsed": "false"
   },
   "source": [
    "## scikit-learn: confusion matrix\n",
    "$$\n",
    "\\begin{bmatrix}\n",
    "C_{0,0} & C_{0,1} \\\\\n",
    "C_{1,0} & C_{1,1}\n",
    "\\end{bmatrix}\n",
    "=\n",
    "\\begin{bmatrix}\n",
    "tn&fp \\\\\n",
    "fn&tp\n",
    "\\end{bmatrix}\n",
    "$$\n",
    "\n",
    "<table>\n",
    "<tr>\n",
    "    <td></td>\n",
    "    <td>predicted false</td>\n",
    "    <td>predicted true</td>\n",
    "</tr>\n",
    "<tr>\n",
    "    <td>actual false</td>\n",
    "    <td>tn</td>\n",
    "    <td>fp</td>\n",
    "</tr>\n",
    "<tr>\n",
    "    <td>actual true</td>\n",
    "    <td>fn</td>\n",
    "    <td>tp</td>\n",
    "</tr>\n",
    "<table>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "pd.crosstab(y_train, predicted, rownames=['Actual'], colnames=['Predicted'], margins=True, margins_name='Total')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "dd=pd.DataFrame({'actual': y_train.values, 'predicted': predicted})\n",
    "dd"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "pd.crosstab(dd['actual'], dd['predicted'])"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "metrics.confusion_matrix(y_train, predicted)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "pd.DataFrame(metrics.confusion_matrix(y_train, predicted), \n",
    "             columns=['pred_fail', 'pred_pass'],\n",
    "             index=['actual_fail', 'actual_pass'])"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "def pretty_confusion_matrix(cm_array):\n",
    "    '''\n",
    "    add labels and grand total to sklearn confusion matrix (2 x 2)\n",
    "    '''\n",
    "    df=pd.DataFrame(cm_array, \n",
    "                   columns=['pred_fail', 'pred_pass'], \n",
    "                   index=['actual_fail', 'actual_pass'])\n",
    "    \n",
    "    index_labels=df.index.tolist()\n",
    "    df=df.append(df.sum(axis=0), ignore_index=True)\n",
    "    df.index=index_labels + ['total']\n",
    "    df['total']=df.sum(axis=1)\n",
    "    return df"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "pretty_confusion_matrix(metrics.confusion_matrix(y_train, predicted))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "tn, fp, fn, tp = metrics.confusion_matrix(y_train, predicted).ravel()"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {
    "collapsed": "false"
   },
   "source": [
    "$$Accuracy={\\frac {{TP+TN} }{TP + TN +FP + FN} }\\\\\n",
    "Precision={\\frac {TP}{TP+FP}}\\\\\n",
    "Recall={\\frac {TP}{TP+FN}}\\\\\n",
    "F1 = 2 \\times {\\frac {precision \\times recall} {precision + recall}}\n",
    "$$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "(tp+tn)/(tp+tn+fp+fn) # accuracy score"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "metrics.accuracy_score(y_train, predicted)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "metrics.precision_score(y_train, predicted)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "tp/(tp+fp) # precision score"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "metrics.recall_score(y_train, predicted)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "tp/(tp+fn) # recall score"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "metrics.f1_score(y_train, predicted)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "print(metrics.classification_report(y_train, predicted))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "tn/(tn+fn) # precision (class=0)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "tn/(tn+fp) # recall (class=0)"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.7.6"
  },
  "widgets": {
   "application/vnd.jupyter.widget-state+json": {
    "state": {},
    "version_major": 2,
    "version_minor": 0
   }
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
