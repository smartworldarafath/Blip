.class public final synthetic La;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/AbstractClickableNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/AbstractClickableNode;I)V
    .locals 0

    .line 1
    iput p2, p0, La;->j:I

    .line 2
    .line 3
    iput-object p1, p0, La;->k:Landroidx/compose/foundation/AbstractClickableNode;

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
    iget v0, p0, La;->j:I

    .line 2
    .line 3
    iget-object p0, p0, La;->k:Landroidx/compose/foundation/AbstractClickableNode;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->n1()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_0
    sget-object v0, Landroidx/compose/foundation/IndicationKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/compose/foundation/Indication;

    .line 21
    .line 22
    instance-of v1, v0, Landroidx/compose/foundation/IndicationNodeFactory;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "clickable only supports IndicationNodeFactory instances provided to LocalIndication, but Indication was provided instead. Either migrate the Indication implementation to implement IndicationNodeFactory, or use the other clickable overload that takes an Indication parameter, and explicitly pass LocalIndication.current there. The Indication instance provided here was: "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->H:Landroidx/compose/foundation/IndicationNodeFactory;

    .line 44
    .line 45
    check-cast v0, Landroidx/compose/foundation/IndicationNodeFactory;

    .line 46
    .line 47
    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->H:Landroidx/compose/foundation/IndicationNodeFactory;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->K:Landroidx/compose/ui/node/DelegatableNode;

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    iget-boolean v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->R:Z

    .line 62
    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    :cond_1
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->Z0(Landroidx/compose/ui/node/DelegatableNode;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->K:Landroidx/compose/ui/node/DelegatableNode;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->j1()V

    .line 74
    .line 75
    .line 76
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
