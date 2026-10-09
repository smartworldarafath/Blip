.class public final synthetic Lfc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/node/NodeCoordinator;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/node/NodeCoordinator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lfc;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lfc;->k:Landroidx/compose/ui/node/NodeCoordinator;

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
    .locals 3

    .line 1
    iget v0, p0, Lfc;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lfc;->k:Landroidx/compose/ui/node/NodeCoordinator;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->l1()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object v1

    .line 18
    :pswitch_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->Y:Landroidx/compose/ui/graphics/Canvas;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->X:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v2}, Landroidx/compose/ui/node/NodeCoordinator;->X0(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 26
    .line 27
    .line 28
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
