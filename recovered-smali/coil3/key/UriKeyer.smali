.class public final Lcoil3/key/UriKeyer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/key/Keyer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcoil3/key/Keyer<",
        "Lcoil3/Uri;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lcoil3/request/Options;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lcoil3/Uri;

    .line 2
    .line 3
    iget-object p0, p1, Lcoil3/Uri;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method
