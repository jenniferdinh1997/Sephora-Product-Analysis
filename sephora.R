sephora_chemicals <- inner_join(sephora,chemicals,by=c("brand"))

#chemicals in brands
sephora_chemicals %>% 
  group_by(brand) %>% 
  summarize(ChemicalCount=sum(ChemicalCount)) %>% 
  arrange(desc(ChemicalCount))

sephora_chemicals %>% 
  group_by(ChemicalName) %>% 
  summarize(ChemicalCount=sum(ChemicalCount)) %>% 
  arrange(desc(ChemicalCount))

#ingredients in brands
sephora %>% 
  filter(ingredients=="unknown") %>% 
  count(ingredients)

#chemicals in categories
sephora_chemicals %>% 
  group_by(category) %>% 
  summarize(ChemicalCount=sum(ChemicalCount)) %>% 
  arrange(desc(ChemicalCount))

#no instructions
sephora %>% 
  filter(how_to_use=="no instructions") %>% 
  count(how_to_use)

#product recommendations(moisturizers)
skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Combination) %>% 
  filter(Combination=="1",Label=="Moisturizer") %>% 
  arrange(desc(Rank),(Price))

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Dry) %>% 
  filter(Dry=="1",Label=="Moisturizer") %>% 
  arrange(desc(Rank),(Price))

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Normal) %>% 
  filter(Normal=="1",Label=="Moisturizer") %>% 
  arrange(desc(Rank),(Price))

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Oily) %>% 
  filter(Oily=="1",Label=="Moisturizer") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Sensitive) %>% 
  filter(Sensitive=="1",Label=="Moisturizer") %>% 
  arrange(desc(Rank),(Price)) 

#product recommendations(cleansers)
skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Combination) %>% 
  filter(Combination=="1",Label=="Cleanser") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Dry) %>% 
  filter(Dry=="1",Label=="Cleanser") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Normal) %>% 
  filter(Normal=="1",Label=="Cleanser") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Oily) %>% 
  filter(Oily=="1",Label=="Cleanser") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Sensitive) %>% 
  filter(Sensitive=="1",Label=="Cleanser") %>% 
  arrange(desc(Rank),(Price)) 

#product recommendations(treatment)
skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Combination) %>% 
  filter(Combination=="1",Label=="Treatment") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Dry) %>% 
  filter(Dry=="1",Label=="Treatment") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Normal) %>% 
  filter(Normal=="1",Label=="Treatment") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Oily) %>% 
  filter(Oily=="1",Label=="Treatment") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Sensitive) %>% 
  filter(Sensitive=="1",Label=="Treatment") %>% 
  arrange(desc(Rank),(Price)) 

#product recommendations(face mask)
skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Combination) %>% 
  filter(Combination=="1",Label=="Face Mask") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Dry) %>% 
  filter(Dry=="1",Label=="Face Mask") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Normal) %>% 
  filter(Normal=="1",Label=="Face Mask") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Oily) %>% 
  filter(Oily=="1",Label=="Face Mask") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Sensitive) %>% 
  filter(Sensitive=="1",Label=="Face Mask") %>% 
  arrange(desc(Rank),(Price)) 


#product recommendations(eye cream)
skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Combination) %>% 
  filter(Combination=="1",Label=="Eye cream") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Dry) %>% 
  filter(Dry=="1",Label=="Eye cream") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Normal) %>% 
  filter(Normal=="1",Label=="Eye cream") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Oily) %>% 
  filter(Oily=="1",Label=="Eye cream") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Sensitive) %>% 
  filter(Sensitive=="1",Label=="Eye cream") %>% 
  arrange(desc(Rank),(Price)) 

#product recommendations(sun protect)
skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Combination) %>% 
  filter(Combination=="1",Label=="Sun protect") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Dry) %>% 
  filter(Dry=="1",Label=="Sun protect") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Normal) %>% 
  filter(Normal=="1",Label=="Sun protect") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Oily) %>% 
  filter(Oily=="1",Label=="Sun protect") %>% 
  arrange(desc(Rank),(Price)) 

skin_type %>% 
  select(Label,Brand,Name,Price,Rank,Sensitive) %>% 
  filter(Sensitive=="1",Label=="Sun protect") %>% 
  arrange(desc(Rank),(Price)) 
