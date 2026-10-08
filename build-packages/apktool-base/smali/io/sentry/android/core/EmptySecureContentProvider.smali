.class abstract Lio/sentry/android/core/EmptySecureContentProvider;
.super Landroid/content/ContentProvider;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final j:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/android/core/EmptySecureContentProvider;->j:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lio/sentry/android/core/EmptySecureContentProvider;->j:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->a(Landroid/content/ContentProvider;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p1, p0, Lio/sentry/android/core/EmptySecureContentProvider;->j:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->a(Landroid/content/ContentProvider;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    iget-object p1, p0, Lio/sentry/android/core/EmptySecureContentProvider;->j:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->a(Landroid/content/ContentProvider;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lio/sentry/android/core/EmptySecureContentProvider;->j:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->a(Landroid/content/ContentProvider;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method
