.class public final Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;,
        Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;
    }
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/ViewModelStore;

.field public final b:Ljava/lang/String;

.field public final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ViewModelStore;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, [Lkotlin/Pair;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->b:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    .line 14
    .line 15
    new-instance v1, Landroidx/lifecycle/SavedStateViewModelFactory;

    .line 16
    .line 17
    invoke-direct {v1}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->a:Landroidx/lifecycle/ViewModelStore;

    .line 27
    .line 28
    const-string p1, "androidx.navigation.NavControllerViewModel"

    .line 29
    .line 30
    iput-object p1, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->b:Ljava/lang/String;

    .line 31
    .line 32
    new-instance p1, Landroidx/lifecycle/viewmodel/a;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Landroidx/lifecycle/viewmodel/a;-><init>(Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->c:Lkotlin/Lazy;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;->b:Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->c:Z

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;->b:Landroidx/collection/MutableScatterMap;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->b:Landroidx/lifecycle/ViewModelStore;

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelStore;->a()V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;->b:Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    check-cast v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    .line 26
    .line 27
    iget-object p0, v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->b:Landroidx/lifecycle/ViewModelStore;

    .line 28
    .line 29
    return-object p0
.end method
