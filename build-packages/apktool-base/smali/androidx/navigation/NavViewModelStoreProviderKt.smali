.class public abstract Landroidx/navigation/NavViewModelStoreProviderKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/lifecycle/ViewModelStore;)Landroidx/navigation/NavViewModelStoreProvider;
    .locals 2

    .line 1
    new-instance v0, Landroidx/navigation/NavViewModelStoreProviderImpl;

    .line 2
    .line 3
    new-instance v1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;-><init>(Landroidx/lifecycle/ViewModelStore;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/navigation/NavViewModelStoreProviderImpl;-><init>(Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
