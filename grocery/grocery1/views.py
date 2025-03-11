from django.shortcuts import render,redirect
from django.http import HttpResponse
from groceryapp.models import *
import json
def index(request):
    data=category.objects.all()
    return render(request,'index.html',{'d':data})
def cash(request):
    userdata=request.session.get('username')
    if request.method == 'POST':
        userdata=request.session.get('username')
        userdata1=userregistration.objects.get(username=userdata)
        no=request.POST['no']
        add=request.POST['address']
      
            
        insertdata=cashondelivery.objects.create(username=userdata,address=add,phoneno=no)
        request.session['mode']='cashondelivery'
        a=request.session.get('a')
        if a:
            p=request.session.get('finalprice')
            c=request.session.get('mode')
            a=request.session.get('a')
            l=[]
            l1=[]
            l2=[]
            l3=[]
            for i in a:
                l.append(i['productname'])
                l1.append(i['unit'])
                l2.append(i['quantity'])
                l3.append(i['p'])
            finalorder.objects.create(user=userdata1,productname=l,finalprice=p,paymentmode=c,address=add,mobile_no=no,unit=str(l1),quantity=str(l2),price=str(l3))
            return redirect('orderdata')
            
        else:
            c=request.session.get('mode')
            a=request.session.get('productid')
            b=request.session.get('productname')
            d=request.session.get('unit')
            e=request.session.get('quantity')
            f=request.session.get('price')
            g=request.session.get('p')
            finalorder.objects.create(user=userdata1,productname=b,finalprice=f,paymentmode=c,address=add,mobile_no=no,unit=d,quantity=e,price=g)
            return redirect('orderdata')
   
   
 

    
    
    return render(request,'cashondelivery.html',{'data':userdata})
def conform(request):
    return render(request,'payment_confirmation.html')
def categorypage(request):
    data=category.objects.all()
    dic={'data':data}
    return render(request,'category.html',dic)
def contact(request):
    return render(request,'contact.html')
def about_us(request):
    return render(request,'index.html')

def payment(request):
          
    #    data=product.objects.get(id=pk)

       return render(request,'paymentform.html')

# def payment2(request,pk):
    
        
#         data=product.objects.get(id=pk)
#         request.session['price']=data.productprice
#         request.session['id']=data.id
       
#         request.session['finalprice'] = None 
#         return redirect('payment')
def addcart(request):
   
    # userdata=request.session.get('username')
    
    # userdata1=userregistration.objects.get(username=userdata)
    # cart=cartdata.objects.filter(user=userdata1)
    # finalprice = 0
    # for i in cart:
    #     finalprice += i.totalprice
    # # finalprice += i.totalprice

    # data=cartdata.objects.filter(user=userdata1)
    data=request.session.get('a')

    
    return render(request,'cart.html',{'data':data})


def drop(request,pk):
    data=cartdata.objects.get(id=pk)
    data.delete()
    return redirect('addcart')
def cartdata1(request, pk):
    # Retrieve form data from the POST request
    quantity = request.POST['quantity']
    unit = request.POST['unit']
    price = request.POST['price']
    userdata = request.session.get('username')
    totalprice = int(quantity) * int(price)

    # Retrieve the user and product details from the database
    userdata1 = userregistration.objects.get(username=userdata)
    data = product.objects.get(id=pk)

    # Save the product details into the `cartdata` model
    insertdata = cartdata.objects.create(
        user=userdata1,
        product=data,
        productname=data.productname,
        productimage=data.productimage,
        unit=unit,
        price=price,
        quantity=quantity,
        totalprice=totalprice
    )

    # Check if the user clicked "Order" or "Add to Cart"
    if 'order' in request.POST:
        # Store the product details in session for ordering
        request.session['productid'] = data.id
        request.session['productname'] = data.productname
        request.session['unit'] = unit
        request.session['quantity'] = quantity
        request.session['price'] = totalprice
        request.session['p'] = price
        request.session['finalprice'] = None
        return redirect('payment')

    elif 'addtocart' in request.POST:
        # Ensure the cart session variable is a list
        if not isinstance(request.session.get('a'), list):
            request.session['a'] = []

        # Retrieve the current session data
        cart_list = request.session['a']

        # Append the new product details to the session cart
        cart_list.append({
            'productid': data.id,
            'productname': data.productname,
            'unit': unit,
            'price': totalprice,
            'quantity': quantity,
            'p': price,
            'img': str(data.productimage)
        })

        # Save the updated list back to the session
        request.session['a'] = cart_list

        # Calculate the total price of all products in the cart
        finalprice = sum(item['price'] for item in cart_list)

        # Store the final price in the session
        request.session['finalprice'] = finalprice

        # Mark the session as modified to ensure changes are saved
        request.session.modified = True

        return redirect('addcart')

def productpage(request,pk):
    data=subcategory.objects.get(id=pk)
    subdata=product.objects.filter(categoryid=data)

    return render(request, 'product.html',{'subdata':subdata})


def productdetail(request,pk):
   
    data1=product.objects.get(id=pk)
    data=product_unit.objects.filter(product=data1)
    
    return render(request, 'productdetailpage.html',{'data':data,'data1':data1,'data2':range(20)})


def subcategorypage(request,pk):
    data=category.objects.get(id=pk)
    subdata=subcategory.objects.filter(categoryid=data)
    return render(request, 'subcategorypage.html',{'subdata':subdata})

def userregister(request):
    message=''
    dic={}
    if request.method == 'POST':
        uname = request.POST.get('username')
        email = request.POST['email']
        password = request.POST['password']
        cpassword=request.POST.get('cpassword')
        mobileno= request.POST['mobileno']

        registerfilter=userregistration.objects.filter(username=uname,email=email,password=password)

        if registerfilter:
            message=' this account is exist please try another'
          
        else:
            if password == cpassword:
                insertdata=userregistration.objects.create(username=uname,email=email,password=password,cpassword=cpassword,mobile_number=mobileno)
                message='register successful'
                return redirect('login')
                # return render(request,'login.html',{'msg':message})
            else:
                message='password does not match'
    dic={'msg':message}
    return render(request,'register.html',dic)

def login(request):
    message=''
    if request.method == 'POST':
        email=request.POST['email']
        password=request.POST['password']
        f=userregistration.objects.filter(email=email,password=password).first()
        if f:
            sessiondata=request.session['username']=f.username
            return redirect('index2')
        else:
            message='first do registration'
    return render(request,'login.html',{'msg':message})

def index2(request):
    # c=category.objects.get(id=pk)
    # s=subcategory.objects.filter(categoryid=c)
    # p=product.objects.filter(categoryid=s)
    
    data=product.objects.all()
    return render(request,'index-2.html',{'data':data})

from django.shortcuts import redirect
from django.http import HttpResponse

def logout(request):
    request.session.flush()


    # Redirect to login page or home page
    return redirect('/')  # Replace 'login' with your actual login page URL name

   

    
def wishlistdata(request,pk):
    data=product.objects.get(id=pk)
    userdata=request.session.get('username')
    userdata1=userregistration.objects.get(username=userdata)
    insertdata=wishlist.objects.create(user=userdata1,productname=data.productname,productimage=data.productimage,productprice=data.productprice)
    return redirect('index2')

def wishlistdata1(request,pk):
    data=product.objects.get(id=pk)
    userdata=request.session.get('username')
    userdata1=userregistration.objects.get(username=userdata)
    insertdata=wishlist.objects.create(user=userdata1,productname=data.productname,productimage=data.productimage,productprice=data.productprice)
    referer_url = request.META.get('HTTP_REFERER')

    # Redirect back to the previous page or default to a home page if no referer is found
    if referer_url:
        return redirect(referer_url)

def wishlistpage(request):
    userdata=request.session.get('username')
    userdata1=userregistration.objects.get(username=userdata)
    data=wishlist.objects.filter(user=userdata1)
    return render(request,'wishlist.html',{'data':data})




'''upi_payment.html'''
def upipay(request):
    userdata=request.session.get('username')
    if request.method == 'POST':
        userdata=request.session.get('username')
        userdata1=userregistration.objects.get(username=userdata)

        a=request.POST['upiid']
        b=request.POST['amount']
        c=request.POST['password']
        d=request.POST['address']
        e=request.POST['no']
        request.session['mode']='upipayment'
        insertdata=upi.objects.create(UPI_ID=a,username=userdata,Amount=b,Password=c,address=d,phoneno=e)
   
        a=request.session.get('a')
        if a:
            p=request.session.get('finalprice')
            c=request.session.get('mode')
            a=request.session.get('a')
            l=[]
            l1=[]
            l2=[]
            l3=[]
            for i in a:
                l.append(i['productname'])
                l1.append(i['unit'])
                l2.append(i['quantity'])
                l3.append(i['p'])
            finalorder.objects.create(user=userdata1,productname=l,finalprice=p,paymentmode=c,address=d,mobile_no=e,unit=str(l1),quantity=str(l2),price=str(l3))
            return redirect('orderdata')
            
        else:
            c=request.session.get('mode')
            a=request.session.get('productid')
            b=request.session.get('productname')
            d=request.session.get('unit')
            e=request.session.get('quantity')
            f=request.session.get('price')
            g=request.session.get('p')
            finalorder.objects.create(user=userdata1,productname=b,finalprice=f,paymentmode=c,address=d,mobile_no=e,unit=d,quantity=e,price=g)
            return redirect('orderdata')
    return render(request,'upi.html',{'data':userdata})

'''card_payment.html'''
def card(request):
    userdata=request.session.get('username')

    if request.method == 'POST':
        userdata=request.session.get('username')
        userdata1=userregistration.objects.get(username=userdata)

        a=request.POST['cardno']
        b=request.POST['expirydate']
        c=request.POST['cvv']
        d=request.POST['address']
        e=request.POST['amount']
        f=request.POST['no']

  

        request.session['mode']='cardpayment'

        insertdata=Card.objects.create( card_number=a,username=userdata,Expiry_date=b,cvv=c,address=d,phoneno=f,Amount=e)
        a=request.session.get('a')
        if a:
            p=request.session.get('finalprice')
            c=request.session.get('mode')
            a=request.session.get('a')
            l=[]
            l1=[]
            l2=[]
            l3=[]
            for i in a:
                l.append(i['productname'])
                l1.append(i['unit'])
                l2.append(i['quantity'])
                l3.append(i['p'])
            finalorder.objects.create(user=userdata1,productname=str(l),finalprice=p,paymentmode=c,address=d,mobile_no=f,unit=str(l1),quantity=str(l2),price=str(l3))
            return redirect('orderdata')
            
        else:
            c=request.session.get('mode')
            a=request.session.get('productid')
            b=request.session.get('productname')
            d=request.session.get('unit')
            e=request.session.get('quantity')
            f=request.session.get('price')
            g=request.session.get('p')
            finalorder.objects.create(user=userdata1,productname=b,finalprice=f,paymentmode=c,address=d,mobile_no=f,unit=d,quantity=e,price=g)
            return redirect('orderdata')

    return render(request,'cardpayment.html',{'data':userdata})



# def payment3(request,pk):
#         request.session['finalprice']=pk
        
#         return redirect('payment')

def orderdata(request):
    aa=request.session.get('a',[])
   
    return render(request,'orderdata.html',{'data':aa})

def final(request):
    request.session['a']=None
    return redirect('/confirmation/')
    




