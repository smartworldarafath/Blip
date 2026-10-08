.class public Landroidx/core/app/NotificationChannelCompat;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationChannelCompat$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Landroid/net/Uri;

.field public f:Landroid/media/AudioAttributes;

.field public g:Z

.field public h:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->e:Landroid/net/Uri;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/core/app/NotificationChannelCompat;->a:Ljava/lang/String;

    .line 9
    .line 10
    iput p2, p0, Landroidx/core/app/NotificationChannelCompat;->c:I

    .line 11
    .line 12
    sget-object p1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/core/app/NotificationChannelCompat;->f:Landroid/media/AudioAttributes;

    .line 15
    .line 16
    return-void
.end method
