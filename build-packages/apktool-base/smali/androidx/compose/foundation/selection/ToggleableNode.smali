.class final Landroidx/compose/foundation/selection/ToggleableNode;
.super Landroidx/compose/foundation/ClickableNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public V:Z

.field public W:Lkotlin/jvm/functions/Function1;

.field public final X:Landroidx/compose/foundation/selection/a;


# direct methods
.method public constructor <init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    .line 1
    new-instance v7, Lq6;

    .line 2
    .line 3
    invoke-direct {v7, p4, p1}, Lq6;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p2

    .line 12
    move-object v6, p3

    .line 13
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/AbstractClickableNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    iput-boolean p1, v0, Landroidx/compose/foundation/selection/ToggleableNode;->V:Z

    .line 17
    .line 18
    iput-object p4, v0, Landroidx/compose/foundation/selection/ToggleableNode;->W:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    new-instance p0, Landroidx/compose/foundation/selection/a;

    .line 21
    .line 22
    invoke-direct {p0, v0}, Landroidx/compose/foundation/selection/a;-><init>(Landroidx/compose/foundation/selection/ToggleableNode;)V

    .line 23
    .line 24
    .line 25
    iput-object p0, v0, Landroidx/compose/foundation/selection/ToggleableNode;->X:Landroidx/compose/foundation/selection/a;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final b1(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/selection/ToggleableNode;->V:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/ui/state/ToggleableState;->j:Landroidx/compose/ui/state/ToggleableState;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Landroidx/compose/ui/state/ToggleableState;->k:Landroidx/compose/ui/state/ToggleableState;

    .line 9
    .line 10
    :goto_0
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 11
    .line 12
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->L:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 13
    .line 14
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 15
    .line 16
    const/16 v3, 0x1a

    .line 17
    .line 18
    aget-object v3, v2, v3

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 27
    .line 28
    const/16 v1, 0x9

    .line 29
    .line 30
    aget-object v1, v2, v1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-object v1, Landroidx/compose/ui/autofill/ContentDataType$Companion;->c:Landroidx/compose/ui/autofill/ContentDataType;

    .line 36
    .line 37
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-boolean p0, p0, Landroidx/compose/foundation/selection/ToggleableNode;->V:Z

    .line 41
    .line 42
    new-instance v0, Landroidx/compose/ui/autofill/AndroidFillableData;

    .line 43
    .line 44
    invoke-static {p0}, Landroid/view/autofill/AutofillValue;->forToggle(Z)Landroid/view/autofill/AutofillValue;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Landroidx/compose/ui/autofill/AndroidFillableData;-><init>(Landroid/view/autofill/AutofillValue;)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 52
    .line 53
    const/16 v1, 0xa

    .line 54
    .line 55
    aget-object v1, v2, v1

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance p0, Llh;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0, p1}, Llh;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->h:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 70
    .line 71
    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-direct {v1, v2, p0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
