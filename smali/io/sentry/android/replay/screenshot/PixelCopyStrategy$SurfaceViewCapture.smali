.class final Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/screenshot/PixelCopyStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SurfaceViewCapture"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->a:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    iput p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->b:I

    .line 10
    .line 11
    iput p3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->c:I

    .line 12
    .line 13
    return-void
.end method
