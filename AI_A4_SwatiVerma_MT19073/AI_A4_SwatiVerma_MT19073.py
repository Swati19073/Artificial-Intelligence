#!/usr/bin/env python
# coding: utf-8

# In[28]:


import nltk
from nltk.corpus import stopwords 
from nltk.stem import WordNetLemmatizer
import string
import re
import inflect


# In[29]:


nltk.download('wordnet')
nltk.download('stopwords')


# In[30]:


from nltk.tokenize import word_tokenize   

import pickle
from num2words import num2words
lem=WordNetLemmatizer()

def user_answers(answer):
    temp=[]
    input1=input(answer)
    input1=input1.lower()
    input1=input1.translate(str.maketrans(" "," ",string.punctuation))
    final_tokens=[]
    input1= input1.split(" ")
    for tokens in input1:
        if(tokens.isdecimal()==True):
            tokens=num2words(tokens)
        word=lem.lemmatize(tokens)
        final_tokens.append(word)
    return final_tokens
  


# In[25]:


l=user_answers("I want to take mental problems and logical reasoning")
print(l)


# In[59]:


file1 = open("D:/Artificial_Intelligence/AI_A4_SwatiVerma_MT19073/facts4.txt", 'w')


# In[60]:



ans=user_answers("Do you like physical work or work which includes problem solving? \n 1. Physical \n 2. Logical \n" )

if "physical" in ans:
    file1.write("physical_or_mental(physical).\n")
    ans1=user_answers("Are you a good leader? \n 1. Yes \n 2. No \n" )
    if "yes" in ans1:
        file1.write("leadership(yes).\n")
        ans2=user_answers("Are you a risk taker? \n 1. Yes \n 2. No \n" )
        if "yes" in ans2:
            file1.write("risk_taker(yes). \n")
elif "logical" in ans:
    file1.write("physical_or_mental(mental).\n")
    ans1=user_answers("Are you good in aptitute? \n 1. Yes \n 2. No \n" ) 
    if "yes" in ans1:
        file1.write("aptitute(yes).\n")
        ans2=user_answers("Are you a technical or non-tech person? \n 1. Technical \n 2. Non-tech \n" ) 
        if "technical" in ans2:
            file1.write("tech_or_nontech(tech). \n")
            ans2=user_answers("Which exam you cleared? \n 1. GATE \n 2. GRE \n 3. CAT \n 4. None \n" )
            if "gre" in ans2:
                file1.write("given_exam(gre). \n")
            elif "gate" in ans2:
                file1.write("given_exam(gate). \n")
            elif "cat" in ans2:
                file1.write("given_exam(cat). \n")
            elif "none" in ans2:
                file1.write("given_exam(none). \n")
                ans3=user_answers("Are you interested in coding? \n 1. Yes \n 2. No \n")
                if "yes" in ans3:
                    file1.write("coding(yes). \n")
                else:
                    file1.write("coding(no). \n")
        else:
            file1.write("tech_or_nontech(nontech). \n")
            ans41=user_answers("Are you interested in doing business? \n 1. Yes 2. No \n")
            if "yes" in ans41:
                file1.write("business_oriented(yes). \n")
            else:
                file1.write("business_oriented(no). \n")
                ans4= user_answers(" Are you a traveller or non-traveller? \n 1. Traveller \n 2. Non-Traveller ")
                if "traveller" in ans4:
                    file1.write("traveller_nontraveller(traveller). \n")
                    ans5= user_answers(" Are you a person of creative and innovative ideas? \n 1. Yes \n 2. No \n")
                    if "yes" in ans5:
                        file1.write("creative_and_innovative(yes). \n")
                else:
                    file1.write("traveller_nontraveller(nontraveller). \n")
                    ans5= user_answers(" Are you a person of creative and innovative ideas? \n 1. Yes \n 2. No \n")
                    if "yes" in ans5:
                        file1.write("creative_and_innovative(yes). \n")
    else:
        file1.write("aptitute(no). \n")
        ans6=user_answers("Are you a technical or non-tech person? \n 1. Technical \n 2. Non-tech \n" ) 
        if "technical" in ans6:
            file1.write("tech_or_nontech(tech). \n")
            ans7= user_answers(" Are you a traveller or non-traveller? \n 1. Traveller \n 2. Non-Traveller ")
            if "traveller" in ans7:
                    file1.write("traveller_nontraveller(traveller). \n")
                    ans8= user_answers(" Are you a person of creative and innovative ideas? \n 1. Yes \n 2. No \n")
                    if "yes" in ans8:
                        file1.write("creative_and_innovative(yes). \n")
            else:
                    file1.write("traveller_nontraveller(nontraveller). \n")
                    ans9= user_answers(" Are you a person of creative and innovative ideas? \n 1. Yes \n 2. No \n")
                    if "yes" in ans9:
                        file1.write("creative_and_innovative(yes). \n")
        else:
            file1.write("tech_or_nontech(nontech). \n")
            ans10= user_answers(" Are you a traveller or non-traveller? \n 1. Traveller \n 2. Non-Traveller ")
            if "traveller" in ans10:
                    file1.write("traveller_nontraveller(traveller). \n")
                    ans11= user_answers(" Are you a person of creative and innovative ideas? \n 1. Yes \n 2. No \n")
                    if "yes" in ans11:
                        file1.write("creative_and_innovative(yes). \n")
            else:
                    file1.write("traveller_nontraveller(nontraveller). \n")
                    ans12= user_answers(" Are you a person of creative and innovative ideas? \n 1. Yes \n 2. No \n")
                    if "yes" in ans12:
                        file1.write("creative_and_innovative(yes). \n")
            
        
                
        
    
print("Your facts are successfully saved in facts4.txt file. \n Now you can use prolog for advicing career")


# In[61]:


file1.close()


# In[ ]:




