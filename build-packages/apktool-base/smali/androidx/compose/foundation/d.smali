.class public final synthetic Landroidx/compose/foundation/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/Indication;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/Indication;Landroidx/compose/foundation/interaction/InteractionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/d;->j:Landroidx/compose/foundation/Indication;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object p1, Landroidx/compose/foundation/IndicationKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 11
    .line 12
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const p1, -0x15193045

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Landroidx/compose/foundation/d;->j:Landroidx/compose/foundation/Indication;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const p0, 0x4af582f5    # 8044922.5f

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Landroidx/compose/foundation/NoIndicationInstance;->a:Landroidx/compose/foundation/NoIndicationInstance;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 48
    .line 49
    if-ne p3, p1, :cond_1

    .line 50
    .line 51
    :cond_0
    new-instance p3, Landroidx/compose/foundation/IndicationModifier;

    .line 52
    .line 53
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    check-cast p3, Landroidx/compose/foundation/IndicationModifier;

    .line 60
    .line 61
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 62
    .line 63
    .line 64
    return-object p3
.end method
