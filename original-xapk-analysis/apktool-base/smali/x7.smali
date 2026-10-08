.class public final synthetic Lx7;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lx7;->j:I

    .line 2
    .line 3
    iput-boolean p4, p0, Lx7;->k:Z

    .line 4
    .line 5
    iput-object p2, p0, Lx7;->l:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lx7;->m:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lx7;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lx7;->k:Z

    .line 7
    .line 8
    iget-object v1, p0, Lx7;->l:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iget-object p0, p0, Lx7;->m:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroidx/navigation/NavHostController;

    .line 15
    .line 16
    sget-object v2, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->c()V

    .line 25
    .line 26
    .line 27
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_0
    iget-boolean v0, p0, Lx7;->k:Z

    .line 31
    .line 32
    iget-object v1, p0, Lx7;->l:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Landroidx/savedstate/SavedStateRegistry;

    .line 35
    .line 36
    iget-object p0, p0, Lx7;->m:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, v1, Landroidx/savedstate/SavedStateRegistry;->a:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 43
    .line 44
    iget-object v1, v0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->c:Landroidx/savedstate/internal/SynchronizedObject;

    .line 45
    .line 46
    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, v0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->d:Landroidx/collection/MutableScatterMap;

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    monitor-exit v1

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v1

    .line 59
    throw p0

    .line 60
    :cond_1
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
