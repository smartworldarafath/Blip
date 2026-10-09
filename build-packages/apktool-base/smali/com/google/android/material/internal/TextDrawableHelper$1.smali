.class Lcom/google/android/material/internal/TextDrawableHelper$1;
.super Lcom/google/android/material/resources/TextAppearanceFontCallback;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/TextDrawableHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/internal/TextDrawableHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/TextDrawableHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper$1;->a:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper$1;->a:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->d:Z

    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    check-cast p0, Lcom/google/android/material/chip/ChipDrawable;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 p1, 0x1

    .line 5
    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper$1;->a:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->d:Z

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    check-cast p0, Lcom/google/android/material/chip/ChipDrawable;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method
