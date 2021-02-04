

class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all 
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
        # render(:new)
    end

    def create 
        coupon = Coupon.create(coupon_code: params[:coupon_code],
        store: params[:store]) 
        redirect_to coupon_path(coupon)
    end

    def edit
        @coupon = Coupon.find(params[:id])
    end

    def update 
        coupon = Coupon.find(params[:id])
        coupon.update(params.require(:coupon).permit(:coupon_code, :store))
        redirect_to coupon_path(coupon)
    end

   
end