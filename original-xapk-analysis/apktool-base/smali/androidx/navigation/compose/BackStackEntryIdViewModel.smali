.class public final Landroidx/navigation/compose/BackStackEntryIdViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Landroidx/navigation/compose/internal/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SaveableStateHolder_BackStackEntryKey"

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, p1, Landroidx/lifecycle/SavedStateHandle;->b:Landroidx/lifecycle/internal/SavedStateHandleImpl;

    .line 12
    .line 13
    iget-object v2, v1, Landroidx/lifecycle/internal/SavedStateHandleImpl;->a:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    iget-object v3, v1, Landroidx/lifecycle/internal/SavedStateHandleImpl;->d:Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object v2, v1, Landroidx/lifecycle/internal/SavedStateHandleImpl;->c:Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-object v5, v4

    .line 49
    :cond_1
    :goto_0
    check-cast v5, Ljava/lang/String;

    .line 50
    .line 51
    if-nez v5, :cond_8

    .line 52
    .line 53
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    iget-object v0, p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;->b:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    if-eqz v5, :cond_5

    .line 67
    .line 68
    sget-object v2, Landroidx/lifecycle/internal/SavedStateHandleImpl_androidKt;->a:Ljava/util/ArrayList;

    .line 69
    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_4

    .line 77
    .line 78
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/Class;

    .line 93
    .line 94
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const-string p1, "Can\'t put value with type "

    .line 106
    .line 107
    const-string v0, " into saved state"

    .line 108
    .line 109
    invoke-static {p1, p0, v0}, Lfe;->u(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    throw v4

    .line 113
    :cond_5
    sget-object v2, Landroidx/lifecycle/internal/SavedStateHandleImpl_androidKt;->a:Ljava/util/ArrayList;

    .line 114
    .line 115
    :goto_1
    iget-object p1, p1, Landroidx/lifecycle/SavedStateHandle;->a:Ljava/util/LinkedHashMap;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    instance-of v2, p1, Landroidx/lifecycle/MutableLiveData;

    .line 122
    .line 123
    if-eqz v2, :cond_6

    .line 124
    .line 125
    move-object v4, p1

    .line 126
    check-cast v4, Landroidx/lifecycle/MutableLiveData;

    .line 127
    .line 128
    :cond_6
    if-eqz v4, :cond_7

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->a(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_7
    invoke-virtual {v1, v5, v0}, Landroidx/lifecycle/internal/SavedStateHandleImpl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_8
    iput-object v5, p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;->c:Ljava/lang/String;

    .line 137
    .line 138
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;->d:Landroidx/navigation/compose/internal/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "saveableStateHolderRef"

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/navigation/compose/internal/WeakReference;->a:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {v0, v3}, Landroidx/compose/runtime/saveable/SaveableStateHolder;->f(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;->d:Landroidx/navigation/compose/internal/WeakReference;

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Landroidx/navigation/compose/internal/WeakReference;->a:Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1
.end method
