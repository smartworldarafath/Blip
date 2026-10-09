.class public final synthetic Landroidx/navigation/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p0, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/navigation/c;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const-class v1, Landroidx/navigation/SavedStateViewModel;

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1, v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->a(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->b()Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
