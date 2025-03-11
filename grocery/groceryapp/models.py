from django.db import models

# Create your models here.
class userregistration(models.Model):
    username=models.CharField(max_length=50,unique=True)
    email=models.EmailField(max_length=50,unique=True)
    password=models.CharField(max_length=50)
    cpassword=models.CharField(max_length=50)
    mobile_number = models.CharField(max_length=10, null=True, blank=True) 

    def __str__(self):
        return self.username



    
class category(models.Model):
    catname=models.CharField(max_length=50,null=False,blank=False)
    catimage=models.FileField(upload_to='img/')

    def __str__(self):
        return self.catname
    
class subcategory(models.Model):
    categoryid=models.ForeignKey(category,on_delete=models.CASCADE)
    categoryname=models.CharField(max_length=50,null=False,blank=False)
    categoryimage=models.FileField(upload_to='img/',default=None)
    def __str__(self):
        return self.categoryname
    
class product(models.Model):
    categoryid=models.ForeignKey(subcategory,on_delete=models.CASCADE)
    productname=models.CharField(max_length=50,null=False,blank=False)
    productimage=models.FileField(upload_to='img/',default=None)
    productdesc=models.TextField(max_length=50)
    productstock=models.IntegerField()
    productprice=models.IntegerField()

    def __str__(self):
        return self.productname
    
class product_unit(models.Model):
    product=models.ForeignKey(product,on_delete=models.CASCADE)
    unit=models.CharField(max_length=10,blank=False)
    price=models.IntegerField()



class cartdata(models.Model):
    user=models.ForeignKey('userregistration',on_delete=models.CASCADE,default=None)
    product=models.ForeignKey('product',on_delete=models.CASCADE)
    productname=models.CharField(max_length=50,default=None)
    productimage=models.FileField(default=None)
    quantity=models.IntegerField()
    unit=models.CharField(max_length=30)
    price=models.IntegerField()
    totalprice=models.IntegerField()

class wishlist(models.Model):
    productname=models.CharField(max_length=50)
    user=models.ForeignKey('userregistration',on_delete=models.CASCADE)
    productprice=models.IntegerField()
    productimage=models.FileField(default=None)


class upi(models.Model):
    UPI_ID = models.CharField(max_length=50,blank=False,null=False)
    Amount = models.CharField(max_length=50,blank=False,null=False)
    # user=models.ForeignKey('userregistration',on_delete=models.CASCADE,default=None)  
    username = models.CharField(max_length=50,default=None)
    Password = models.CharField(max_length=50,blank=False,null=False)
    address=models.CharField(max_length=100,default=None)
    phoneno=models.CharField(max_length=10,default=None)


    def __str__(self):
        return self.Name

class Card(models.Model):
    card_number = models.CharField(max_length=12,blank=False,null=True)
    Expiry_date = models.DateTimeField(blank=False,null=False)
    cvv = models.IntegerField(blank=False,null=False)
    username = models.CharField(max_length=50)
    address=models.CharField(max_length=100,default=None)
    phoneno=models.CharField(max_length=10,default=None)
    # user=models.ForeignKey('userregistration',on_delete=models.CASCADE,default=None)
    Amount = models.IntegerField(blank=False,null=False)

    def __str__(self):
        return self.username
    
    

class cashondelivery(models.Model):
    # user=models.ForeignKey('userregistration',on_delete=models.CASCADE,default=None)  
    username = models.CharField(max_length=50,default=False)
    address=models.CharField(max_length=100)
    phoneno=models.CharField(max_length=10)

# class finalprice(models.Model):
#     user=models.ForeignKey('userregistration',on_delete=models.CASCADE)
#     finalprice=models.IntegerField(blank=False,null=False)

class finalorder(models.Model):
     user=models.ForeignKey('userregistration',on_delete=models.CASCADE)
     productname=models.CharField(max_length=50)
     finalprice=models.IntegerField(default=0)
     paymentmode=models.CharField(max_length=50,default=None)
     address=models.CharField(max_length=50,default=None)
     mobile_no=models.CharField(max_length=10,default=None)
     unit=models.CharField(max_length=50,default=None)
     quantity=models.CharField(max_length=50,default=None)
     price=models.CharField(max_length=50,default=None)

