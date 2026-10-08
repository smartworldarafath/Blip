.class public final Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lnet/blip/shared/AvatarTheme;


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;->a:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILandroidx/compose/runtime/Composer;)Lnet/blip/shared/AvatarTheme$Appearance;
    .locals 0

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const p1, -0x6457ca4c

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;->c(Landroidx/compose/runtime/Composer;)Lnet/blip/shared/AvatarTheme$Appearance;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public final b(Landroidx/compose/runtime/Composer;)Lnet/blip/shared/AvatarTheme$Appearance;
    .locals 7

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x58692a42

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 7
    .line 8
    .line 9
    const v0, 0x3ea8f5c3    # 0.33f

    .line 10
    .line 11
    .line 12
    iget-wide v1, p0, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;->a:J

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Lnet/blip/shared/ColorKt;->a(JF)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    const/high16 p0, 0x3f400000    # 0.75f

    .line 19
    .line 20
    invoke-static {v1, v2, p0}, Lnet/blip/shared/ColorKt;->a(JF)J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    const p0, 0x3e99999a    # 0.3f

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2, p0}, Lnet/blip/shared/ColorKt;->a(JF)J

    .line 28
    .line 29
    .line 30
    new-instance p0, Landroidx/compose/ui/graphics/Color;

    .line 31
    .line 32
    invoke-static {v3, v4, v5, v6}, Lnet/blip/android/ui/androidtheme/AndroidAvatarThemeKt;->a(JJ)Lnet/blip/shared/AvatarTheme$Appearance;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 38
    .line 39
    .line 40
    return-object p0
.end method

.method public final c(Landroidx/compose/runtime/Composer;)Lnet/blip/shared/AvatarTheme$Appearance;
    .locals 5

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x4346cab6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 7
    .line 8
    .line 9
    const v0, 0x3ecccccd    # 0.4f

    .line 10
    .line 11
    .line 12
    iget-wide v1, p0, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;->a:J

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Lnet/blip/shared/ColorKt;->a(JF)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-static {v1, v2, v3, v4}, Lnet/blip/android/ui/androidtheme/AndroidAvatarThemeKt;->a(JJ)Lnet/blip/shared/AvatarTheme$Appearance;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method
