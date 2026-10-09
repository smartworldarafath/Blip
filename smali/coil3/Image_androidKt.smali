.class public abstract Lcoil3/Image_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    instance-of v0, p0, Lcoil3/DrawableImage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcoil3/DrawableImage;

    .line 6
    .line 7
    iget-object p0, p0, Lcoil3/DrawableImage;->a:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    instance-of v0, p0, Lcoil3/BitmapImage;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p0, Lcoil3/BitmapImage;

    .line 15
    .line 16
    iget-object p0, p0, Lcoil3/BitmapImage;->a:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 19
    .line 20
    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    new-instance p1, Lcoil3/ImageDrawable;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcoil3/ImageDrawable;-><init>(Lcoil3/Image;)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method public static final b(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Lcoil3/BitmapImage;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcoil3/BitmapImage;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Lcoil3/DrawableImage;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcoil3/DrawableImage;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
