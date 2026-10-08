.class public final Lcoil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/target/Target;


# instance fields
.field public final synthetic j:Lcoil3/request/ImageRequest;

.field public final synthetic k:Lcoil3/compose/AsyncImagePainter;


# direct methods
.method public constructor <init>(Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImagePainter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1;->j:Lcoil3/request/ImageRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1;->k:Lcoil3/compose/AsyncImagePainter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onError(Lcoil3/Image;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart(Lcoil3/Image;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1;->j:Lcoil3/request/ImageRequest;

    .line 2
    .line 3
    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1;->k:Lcoil3/compose/AsyncImagePainter;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    .line 8
    .line 9
    iget v2, p0, Lcoil3/compose/AsyncImagePainter;->y:I

    .line 10
    .line 11
    invoke-static {p1, v1, v2}, Lcoil3/compose/ImagePainter_androidKt;->a(Lcoil3/Image;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    sget-object v1, Lcoil3/compose/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->m()Landroidx/compose/ui/graphics/painter/Painter;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    move-object p1, v0

    .line 40
    :cond_1
    new-instance v0, Lcoil3/compose/AsyncImagePainter$State$Loading;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Lcoil3/compose/AsyncImagePainter$State$Loading;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0}, Lcoil3/compose/AsyncImagePainter;->l(Lcoil3/compose/AsyncImagePainter;Lcoil3/compose/AsyncImagePainter$State;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onSuccess(Lcoil3/Image;)V
    .locals 0

    .line 1
    return-void
.end method
