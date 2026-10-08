.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->a:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 8

    .line 1
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    .line 2
    .line 3
    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 6
    .line 7
    iget-boolean v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z

    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->k()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    iput v4, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:I

    .line 14
    .line 15
    sget-object v4, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x1

    .line 22
    if-ne v4, v5, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v5, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->h()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iput v4, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    .line 45
    .line 46
    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    .line 47
    .line 48
    add-int/2addr v4, p3

    .line 49
    :cond_1
    iget-boolean p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:Z

    .line 50
    .line 51
    if-eqz p3, :cond_3

    .line 52
    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    move p3, v1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move p3, v0

    .line 58
    :goto_1
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->i()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    add-int/2addr v6, p3

    .line 63
    :cond_3
    iget-boolean p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    .line 64
    .line 65
    if-eqz p3, :cond_5

    .line 66
    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    move v0, v1

    .line 71
    :goto_2
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->j()I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    add-int v7, p3, v0

    .line 76
    .line 77
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    invoke-virtual {p1, v6, p3, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    .line 83
    .line 84
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->a:Z

    .line 85
    .line 86
    if-eqz p0, :cond_6

    .line 87
    .line 88
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->g()Landroidx/core/graphics/Insets;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget p1, p1, Landroidx/core/graphics/Insets;->d:I

    .line 93
    .line 94
    iput p1, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    .line 95
    .line 96
    :cond_6
    if-nez v3, :cond_8

    .line 97
    .line 98
    if-eqz p0, :cond_7

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_7
    return-object p2

    .line 102
    :cond_8
    :goto_3
    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G()V

    .line 103
    .line 104
    .line 105
    return-object p2
.end method
