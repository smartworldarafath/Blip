.class final Lcom/google/android/material/internal/ViewUtils$3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic j:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

.field public final synthetic k:Lcom/google/android/material/internal/ViewUtils$RelativePadding;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/internal/ViewUtils$3;->j:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/material/internal/ViewUtils$3;->k:Lcom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final i(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/internal/ViewUtils$3;->k:Lcom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 7
    .line 8
    iget v2, v1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    .line 9
    .line 10
    iput v2, v0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    .line 11
    .line 12
    iget v2, v1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->b:I

    .line 13
    .line 14
    iput v2, v0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->b:I

    .line 15
    .line 16
    iget v1, v1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    .line 17
    .line 18
    iput v1, v0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    .line 19
    .line 20
    iget-object p0, p0, Lcom/google/android/material/internal/ViewUtils$3;->j:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    .line 21
    .line 22
    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;

    .line 23
    .line 24
    .line 25
    return-object p2
.end method
