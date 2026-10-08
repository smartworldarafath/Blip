.class final Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/NativeEventCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemHeaderInfo"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;->b:I

    .line 7
    .line 8
    return-void
.end method
