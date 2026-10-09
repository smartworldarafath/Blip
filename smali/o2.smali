.class public final synthetic Lo2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo2;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lo2;->k:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lo2;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lo2;->k:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->K:Landroid/view/View;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->N:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :pswitch_0
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->K:Landroid/view/View;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->O:Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_1
    invoke-static {p0}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->n(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :pswitch_2
    sget v0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->Q:I

    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->K:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_3
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->I:Landroidx/compose/ui/node/LayoutNode;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->G()V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :pswitch_4
    invoke-static {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->j(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;)V

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
