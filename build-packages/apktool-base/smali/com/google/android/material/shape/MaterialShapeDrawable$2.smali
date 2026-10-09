.class Lcom/google/android/material/shape/MaterialShapeDrawable$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->a:F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/shape/RelativeCornerSize;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/material/shape/AdjustedCornerSize;

    .line 7
    .line 8
    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->a:F

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/shape/AdjustedCornerSize;-><init>(FLcom/google/android/material/shape/CornerSize;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
