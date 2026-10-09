.class public final synthetic Landroidx/compose/runtime/saveable/h;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/saveable/h;->j:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/saveable/h;->k:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/saveable/h;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/runtime/saveable/h;->m:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget p2, p0, Landroidx/compose/runtime/saveable/h;->m:I

    .line 9
    .line 10
    or-int/lit8 p2, p2, 0x1

    .line 11
    .line 12
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iget-object v0, p0, Landroidx/compose/runtime/saveable/h;->j:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/runtime/saveable/h;->k:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/compose/runtime/saveable/h;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 21
    .line 22
    invoke-virtual {v0, v1, p0, p1, p2}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->a(Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method
