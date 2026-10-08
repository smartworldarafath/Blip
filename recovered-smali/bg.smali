.class public final synthetic Lbg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnPartialImageListener;


# instance fields
.field public final synthetic a:Lcoil3/decode/StaticImageDecoder;


# direct methods
.method public synthetic constructor <init>(Lcoil3/decode/StaticImageDecoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbg;->a:Lcoil3/decode/StaticImageDecoder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPartialImage(Landroid/graphics/ImageDecoder$DecodeException;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lbg;->a:Lcoil3/decode/StaticImageDecoder;

    .line 2
    .line 3
    iget-object p0, p0, Lcoil3/decode/StaticImageDecoder;->c:Lcoil3/request/Options;

    .line 4
    .line 5
    sget-object p1, Lcoil3/request/ImageRequests_androidKt;->f:Lcoil3/Extras$Key;

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
