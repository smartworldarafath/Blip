.class public abstract Landroidx/compose/ui/graphics/RenderEffect;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:Landroid/graphics/RenderEffect;


# virtual methods
.method public final a()Landroid/graphics/RenderEffect;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/RenderEffect;->a:Landroid/graphics/RenderEffect;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Landroidx/compose/ui/graphics/BlurEffect;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/ui/graphics/BlurEffect;->b:F

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    cmpg-float v3, v1, v2

    .line 12
    .line 13
    iget v4, v0, Landroidx/compose/ui/graphics/BlurEffect;->c:F

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    cmpg-float v2, v4, v2

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-static {}, Ldb;->c()Landroid/graphics/RenderEffect;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v0, v0, Landroidx/compose/ui/graphics/BlurEffect;->d:I

    .line 27
    .line 28
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidTileMode_androidKt;->a(I)Landroid/graphics/Shader$TileMode;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v4, v0}, Ldb;->d(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/graphics/RenderEffect;->a:Landroid/graphics/RenderEffect;

    .line 37
    .line 38
    :cond_1
    return-object v0
.end method
