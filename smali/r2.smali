.class public final synthetic Lr2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Landroid/content/Context;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

.field public final synthetic m:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

.field public final synthetic n:I

.field public final synthetic o:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer$CompositionContextImpl;Landroidx/compose/runtime/saveable/SaveableStateRegistry;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2;->j:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lr2;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Lr2;->l:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 9
    .line 10
    iput-object p4, p0, Lr2;->m:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 11
    .line 12
    iput p5, p0, Lr2;->n:I

    .line 13
    .line 14
    iput-object p6, p0, Lr2;->o:Landroid/view/View;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 2
    .line 3
    iget-object v1, p0, Lr2;->o:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object v6, v1

    .line 9
    check-cast v6, Landroidx/compose/ui/node/Owner;

    .line 10
    .line 11
    iget-object v1, p0, Lr2;->j:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v2, p0, Lr2;->k:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    iget-object v3, p0, Lr2;->l:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 16
    .line 17
    iget-object v4, p0, Lr2;->m:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 18
    .line 19
    iget v5, p0, Lr2;->n:I

    .line 20
    .line 21
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer$CompositionContextImpl;Landroidx/compose/runtime/saveable/SaveableStateRegistry;ILandroidx/compose/ui/node/Owner;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
