.class public final synthetic Lg5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lg5;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lg5;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lg5;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final h(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    iget p1, p0, Lg5;->j:I

    .line 2
    .line 3
    iget-object v0, p0, Lg5;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lg5;->k:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroidx/lifecycle/Lifecycle$Event;

    .line 11
    .line 12
    check-cast v0, Lcom/google/accompanist/permissions/MutablePermissionState;

    .line 13
    .line 14
    if-ne p2, p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/accompanist/permissions/MutablePermissionState;->a()Lcom/google/accompanist/permissions/PermissionStatus;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object p1, Lcom/google/accompanist/permissions/PermissionStatus$Granted;->a:Lcom/google/accompanist/permissions/PermissionStatus$Granted;

    .line 21
    .line 22
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/accompanist/permissions/MutablePermissionState;->c()Lcom/google/accompanist/permissions/PermissionStatus;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p1, v0, Lcom/google/accompanist/permissions/MutablePermissionState;->d:Landroidx/compose/runtime/MutableState;

    .line 33
    .line 34
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    :pswitch_0
    check-cast p0, Landroidx/activity/OnBackPressedDispatcher;

    .line 41
    .line 42
    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 43
    .line 44
    sget p1, Landroidx/activity/ComponentActivity;->D:I

    .line 45
    .line 46
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 47
    .line 48
    if-ne p2, p1, :cond_1

    .line 49
    .line 50
    invoke-static {v0}, Ll;->p(Landroidx/activity/ComponentActivity;)Landroid/window/OnBackInvokedDispatcher;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroidx/activity/OnBackPressedDispatcher;->d(Landroid/window/OnBackInvokedDispatcher;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
