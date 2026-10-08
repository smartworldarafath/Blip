.class public final Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Report"
.end annotation


# instance fields
.field public final a:Lio/sentry/SentryEvent;

.field public final b:Lio/sentry/Hint;

.field public final c:Lio/sentry/hints/BlockingFlushHint;


# direct methods
.method public constructor <init>(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/hints/BlockingFlushHint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;->a:Lio/sentry/SentryEvent;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;->b:Lio/sentry/Hint;

    .line 7
    .line 8
    iput-object p3, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;->c:Lio/sentry/hints/BlockingFlushHint;

    .line 9
    .line 10
    return-void
.end method
