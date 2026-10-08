.class public abstract Lcoil3/size/SizeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(II)Lcoil3/size/Size;
    .locals 2

    .line 1
    new-instance v0, Lcoil3/size/Size;

    .line 2
    .line 3
    invoke-static {p0}, Lcoil3/size/DimensionKt;->a(I)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcoil3/size/Dimension$Pixels;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcoil3/size/Dimension$Pixels;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcoil3/size/DimensionKt;->a(I)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Lcoil3/size/Dimension$Pixels;

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcoil3/size/Dimension$Pixels;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, p0}, Lcoil3/size/Size;-><init>(Lcoil3/size/Dimension;Lcoil3/size/Dimension;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
