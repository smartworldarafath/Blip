.class abstract Landroidx/core/view/WindowInsetsControllerCompat$Impl20;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl20"
.end annotation


# instance fields
.field public final a:Landroid/view/Window;

.field public final b:Landroidx/core/view/SoftwareKeyboardControllerCompat;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroidx/core/view/SoftwareKeyboardControllerCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->a:Landroid/view/Window;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->b:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0x200

    .line 4
    .line 5
    if-gt v1, v2, :cond_4

    .line 6
    .line 7
    const/16 v2, 0x207

    .line 8
    .line 9
    and-int/2addr v2, v1

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    if-eq v1, v0, :cond_3

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq v1, v2, :cond_2

    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-object v2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->b:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/core/view/SoftwareKeyboardControllerCompat;->a()V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->e(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    const/4 v2, 0x4

    .line 34
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->e(I)V

    .line 35
    .line 36
    .line 37
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0x200

    .line 4
    .line 5
    if-gt v1, v2, :cond_4

    .line 6
    .line 7
    const/16 v2, 0x207

    .line 8
    .line 9
    and-int/2addr v2, v1

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    if-eq v1, v0, :cond_3

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq v1, v2, :cond_2

    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-object v2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->b:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/core/view/SoftwareKeyboardControllerCompat;->b()V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->f(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    const/4 v2, 0x4

    .line 34
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->f(I)V

    .line 35
    .line 36
    .line 37
    const/16 v2, 0x400

    .line 38
    .line 39
    iget-object v3, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->a:Landroid/view/Window;

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 42
    .line 43
    .line 44
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->a:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    or-int/2addr p1, v0

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final f(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->a:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    not-int p1, p1

    .line 12
    and-int/2addr p1, v0

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
