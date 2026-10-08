.class public final Lcoil3/fetch/DrawableFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/fetch/DrawableFetcher$Factory;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Lcoil3/request/Options;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcoil3/request/Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/fetch/DrawableFetcher;->a:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/fetch/DrawableFetcher;->b:Lcoil3/request/Options;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object p1, Lcoil3/util/Utils_androidKt;->a:[Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    iget-object v0, p0, Lcoil3/fetch/DrawableFetcher;->a:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    instance-of p1, v0, Landroid/graphics/drawable/VectorDrawable;

    .line 6
    .line 7
    new-instance v6, Lcoil3/fetch/ImageFetchResult;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcoil3/fetch/DrawableFetcher;->b:Lcoil3/request/Options;

    .line 12
    .line 13
    invoke-static {p0}, Lcoil3/request/ImageRequests_androidKt;->a(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcoil3/request/Options;->b:Lcoil3/size/Size;

    .line 18
    .line 19
    iget-object v3, p0, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    .line 20
    .line 21
    sget-object v4, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    .line 22
    .line 23
    invoke-static {p0, v4}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcoil3/size/Size;

    .line 28
    .line 29
    iget-object v5, p0, Lcoil3/request/Options;->d:Lcoil3/size/Precision;

    .line 30
    .line 31
    sget-object v7, Lcoil3/size/Precision;->k:Lcoil3/size/Precision;

    .line 32
    .line 33
    if-ne v5, v7, :cond_0

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v5, 0x0

    .line 38
    :goto_0
    invoke-static/range {v0 .. v5}, Lcoil3/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;Z)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object p0, p0, Lcoil3/request/Options;->a:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 49
    .line 50
    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 51
    .line 52
    .line 53
    move-object v0, v1

    .line 54
    :cond_1
    invoke-static {v0}, Lcoil3/Image_androidKt;->b(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    sget-object v0, Lcoil3/decode/DataSource;->k:Lcoil3/decode/DataSource;

    .line 59
    .line 60
    invoke-direct {v6, p0, p1, v0}, Lcoil3/fetch/ImageFetchResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;)V

    .line 61
    .line 62
    .line 63
    return-object v6
.end method
