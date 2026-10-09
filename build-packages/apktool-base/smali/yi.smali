.class public final synthetic Lyi;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Lcoil3/compose/AsyncImagePainter;

.field public final synthetic l:F

.field public final synthetic m:Z

.field public final synthetic n:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcoil3/compose/AsyncImagePainter;FZLkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyi;->j:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lyi;->k:Lcoil3/compose/AsyncImagePainter;

    .line 7
    .line 8
    iput p3, p0, Lyi;->l:F

    .line 9
    .line 10
    iput-boolean p4, p0, Lyi;->m:Z

    .line 11
    .line 12
    iput-object p5, p0, Lyi;->n:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x7

    .line 10
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    iget-object v0, p0, Lyi;->j:Landroidx/compose/ui/Modifier;

    .line 15
    .line 16
    iget-object v1, p0, Lyi;->k:Lcoil3/compose/AsyncImagePainter;

    .line 17
    .line 18
    iget v2, p0, Lyi;->l:F

    .line 19
    .line 20
    iget-boolean v3, p0, Lyi;->m:Z

    .line 21
    .line 22
    iget-object v4, p0, Lyi;->n:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    invoke-static/range {v0 .. v6}, Lnet/blip/android/ui/gallery/ZoomableImageKt;->a(Landroidx/compose/ui/Modifier;Lcoil3/compose/AsyncImagePainter;FZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method
