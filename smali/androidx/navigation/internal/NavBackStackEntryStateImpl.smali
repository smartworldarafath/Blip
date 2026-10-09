.class public final Landroidx/navigation/internal/NavBackStackEntryStateImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Landroid/os/Bundle;

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "nav-entry-state:id"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iput-object v1, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->a:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "nav-entry-state:destination-id"

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroidx/savedstate/SavedStateReader;->c(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->b:I

    .line 25
    .line 26
    const-string v0, "nav-entry-state:args"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iput-object v1, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->c:Landroid/os/Bundle;

    .line 35
    .line 36
    const-string v0, "nav-entry-state:saved-state"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->d:Landroid/os/Bundle;

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-static {v0}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v2

    .line 51
    :cond_1
    invoke-static {v0}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v2

    .line 55
    :cond_2
    invoke-static {v0}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v2
.end method

.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v0, p1, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->a:Ljava/lang/String;

    .line 62
    iput p2, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->b:I

    .line 63
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->b()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->c:Landroid/os/Bundle;

    const/4 p2, 0x0

    .line 64
    new-array p2, p2, [Lkotlin/Pair;

    .line 65
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-static {p2}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p2

    .line 66
    iput-object p2, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->d:Landroid/os/Bundle;

    .line 67
    iget-object p0, p1, Landroidx/navigation/NavBackStackEntry;->q:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {p0, p2}, Landroidx/savedstate/SavedStateRegistryController;->c(Landroid/os/Bundle;)V

    return-void
.end method
