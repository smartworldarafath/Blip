.class final Lio/sentry/JsonObjectReader$RecoveryState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/JsonObjectReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecoveryState"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lio/sentry/vendor/gson/stream/JsonToken;

.field public c:Z


# direct methods
.method public constructor <init>(ILio/sentry/vendor/gson/stream/JsonToken;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lio/sentry/JsonObjectReader$RecoveryState;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/JsonObjectReader$RecoveryState;->b:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 7
    .line 8
    return-void
.end method
