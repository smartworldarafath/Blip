.class public final synthetic Lub;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/compose/NavHostEventHandler;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lub;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lub;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lub;->k:Z

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lub;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lub;->k:Z

    iput-object p1, p0, Lub;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lub;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lub;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iget-boolean p0, p0, Lub;->k:Z

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 17
    .line 18
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 19
    .line 20
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aget-object v0, v0, v2

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/ui/semantics/LiveRegionMode;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 37
    .line 38
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 39
    .line 40
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    aget-object v0, v0, v2

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance p0, Lvc;

    .line 52
    .line 53
    const/16 v0, 0x15

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lvc;-><init>(I)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 59
    .line 60
    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-direct {v1, v2, p0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_0
    check-cast v1, Landroidx/navigation/compose/NavHostEventHandler;

    .line 73
    .line 74
    check-cast p1, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    .line 75
    .line 76
    invoke-virtual {v1, p0}, Landroidx/navigationevent/NavigationEventHandler;->f(Z)V

    .line 77
    .line 78
    .line 79
    new-instance p0, Landroidx/navigation/compose/NavHostEventHandlerKt$rememberNavHostEventHandler$lambda$2$0$$inlined$onStopOrDispose$1;

    .line 80
    .line 81
    invoke-direct {p0, p1, v1}, Landroidx/navigation/compose/NavHostEventHandlerKt$rememberNavHostEventHandler$lambda$2$0$$inlined$onStopOrDispose$1;-><init>(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Landroidx/navigation/compose/NavHostEventHandler;)V

    .line 82
    .line 83
    .line 84
    return-object p0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
