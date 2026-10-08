.class public final synthetic Lid;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Z

.field public final synthetic l:Z

.field public final synthetic m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lid;->j:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-boolean p2, p0, Lid;->k:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lid;->l:Z

    .line 9
    .line 10
    iput-object p4, p0, Lid;->m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 11
    .line 12
    iput p6, p0, Lid;->n:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0xc01

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    iget-object v0, p0, Lid;->j:Landroidx/compose/ui/Modifier;

    .line 16
    .line 17
    iget-boolean v1, p0, Lid;->k:Z

    .line 18
    .line 19
    iget-boolean v2, p0, Lid;->l:Z

    .line 20
    .line 21
    iget-object v3, p0, Lid;->m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 22
    .line 23
    iget v6, p0, Lid;->n:I

    .line 24
    .line 25
    invoke-static/range {v0 .. v6}, Lnet/blip/android/ui/home/PeerTrayCellsKt;->a(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method
