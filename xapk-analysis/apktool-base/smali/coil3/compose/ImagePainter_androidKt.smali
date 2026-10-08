.class public abstract Lcoil3/compose/ImagePainter_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lcoil3/Image;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 6

    .line 1
    instance-of v0, p0, Lcoil3/BitmapImage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcoil3/BitmapImage;

    .line 6
    .line 7
    iget-object p0, p0, Lcoil3/BitmapImage;->a:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    new-instance p1, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    int-to-long v0, v0

    .line 23
    const/16 v2, 0x20

    .line 24
    .line 25
    shl-long/2addr v0, v2

    .line 26
    int-to-long v2, p0

    .line 27
    const-wide v4, 0xffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    and-long/2addr v2, v4

    .line 33
    or-long/2addr v0, v2

    .line 34
    new-instance p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 35
    .line 36
    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;J)V

    .line 37
    .line 38
    .line 39
    iput p2, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->q:I

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_0
    instance-of v0, p0, Lcoil3/DrawableImage;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Lcoil3/Image_androidKt;->a(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const/4 p1, 0x1

    .line 59
    if-nez p2, :cond_1

    .line 60
    .line 61
    move p2, p1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 p2, 0x0

    .line 64
    :goto_0
    xor-int/2addr p1, p2

    .line 65
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lcom/google/accompanist/drawablepainter/DrawablePainter;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lcom/google/accompanist/drawablepainter/DrawablePainter;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_2
    new-instance p1, Lcoil3/compose/ImagePainter;

    .line 75
    .line 76
    invoke-direct {p1, p0}, Lcoil3/compose/ImagePainter;-><init>(Lcoil3/Image;)V

    .line 77
    .line 78
    .line 79
    return-object p1
.end method
