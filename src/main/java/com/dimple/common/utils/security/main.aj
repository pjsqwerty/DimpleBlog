package com.dimple.common.utils.security;

import com.dimple.common.utils.SecurityUtils;
import org.junit.Test;
public class main {
    @Test
    public static void mains() {
        String s = SecurityUtils.encryptPassword("123456");
        System.out.println(s);
    }
}
