package com.google.firebase.messaging;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TopicsStore {
    public static WeakReference b;
    public SharedPreferencesQueue a;

    public final synchronized TopicOperation a() {
        String str;
        TopicOperation topicOperation;
        SharedPreferencesQueue sharedPreferencesQueue = this.a;
        synchronized (sharedPreferencesQueue.d) {
            str = (String) sharedPreferencesQueue.d.peek();
        }
        Pattern pattern = TopicOperation.d;
        topicOperation = null;
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split("!", -1);
            if (split.length == 2) {
                topicOperation = new TopicOperation(split[0], split[1]);
            }
        }
        return topicOperation;
    }
}
