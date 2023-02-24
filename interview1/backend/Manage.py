from Settings.options import * 

ListData = []

class ListRestaurant :

    def __init__(self,name,menu) -> None:
        self.name = name
        self.menu = menu
        
        menuList = []
        for _i in range(0,len(menu)):
            _menu = {f'menu{_i+1}':menu[_i]}
            menuList.append(_menu)
        


for index in db.reference('Restaurants/ListRestaruants').get() :
    
     raw = db.reference(f'Restaurants/ListRestaruants/{index}').get()
     print(raw['name'])
     res = ListRestaurant("kaw",raw['name'])
     
print(ListData)
