.class public abstract Landroidx/lifecycle/viewmodel/compose/ViewModelKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;
    .locals 0

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    instance-of p2, p1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    move-object p2, p1

    .line 8
    check-cast p2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 9
    .line 10
    invoke-interface {p2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->c()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p2, Landroidx/lifecycle/viewmodel/internal/DefaultViewModelProviderFactory;->a:Landroidx/lifecycle/viewmodel/internal/DefaultViewModelProviderFactory;

    .line 16
    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance p4, Landroidx/lifecycle/ViewModelProvider;

    .line 24
    .line 25
    invoke-interface {p1}, Landroidx/lifecycle/ViewModelStoreOwner;->e()Landroidx/lifecycle/ViewModelStore;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p4, p1, p2, p3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4, p0}, Landroidx/lifecycle/ViewModelProvider;->a(Lkotlin/jvm/internal/ClassReference;)Landroidx/lifecycle/ViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
