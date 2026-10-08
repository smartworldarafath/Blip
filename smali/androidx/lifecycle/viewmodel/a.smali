.class public final synthetic Landroidx/lifecycle/viewmodel/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/lifecycle/viewmodel/a;->j:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/a;->j:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->a:Landroidx/lifecycle/ViewModelStore;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/lifecycle/ViewModelStore;->a:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    .line 18
    .line 19
    invoke-direct {v1}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    check-cast v1, Landroidx/lifecycle/ViewModel;

    .line 26
    .line 27
    check-cast v1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    new-instance p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    .line 31
    .line 32
    invoke-direct {p0}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method
