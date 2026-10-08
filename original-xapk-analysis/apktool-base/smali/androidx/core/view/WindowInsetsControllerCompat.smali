.class public final Landroidx/core/view/WindowInsetsControllerCompat;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsControllerCompat$Impl35;,
        Landroidx/core/view/WindowInsetsControllerCompat$Impl;,
        Landroidx/core/view/WindowInsetsControllerCompat$Impl30;,
        Landroidx/core/view/WindowInsetsControllerCompat$Impl26;,
        Landroidx/core/view/WindowInsetsControllerCompat$Impl23;,
        Landroidx/core/view/WindowInsetsControllerCompat$Impl31;,
        Landroidx/core/view/WindowInsetsControllerCompat$Impl20;
    }
.end annotation


# instance fields
.field public final a:Landroidx/core/view/WindowInsetsControllerCompat$Impl;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/view/SoftwareKeyboardControllerCompat;

    .line 5
    .line 6
    invoke-direct {v0, p2}, Landroidx/core/view/SoftwareKeyboardControllerCompat;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x23

    .line 12
    .line 13
    if-lt p2, v1, :cond_0

    .line 14
    .line 15
    new-instance p2, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 16
    .line 17
    invoke-direct {p2, p1, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat;->a:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/16 v1, 0x1e

    .line 24
    .line 25
    if-lt p2, v1, :cond_1

    .line 26
    .line 27
    new-instance p2, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 28
    .line 29
    invoke-direct {p2, p1, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat;->a:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance p2, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 36
    .line 37
    invoke-direct {p2, p1, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;-><init>(Landroid/view/Window;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat;->a:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->a:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->a:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->b(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->a:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->c(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat;->a:Landroidx/core/view/WindowInsetsControllerCompat$Impl;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
